import 'package:after_layout/after_layout.dart';
import 'package:chusay_project/pages/alert/principal_alert.dart';
import 'package:chusay_project/pages/auth/auth_page.dart';
import 'package:chusay_project/pages/login/login.dart';
import 'package:chusay_project/pages/start/start.dart';
import 'package:chusay_project/widgets/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chusay_project/pages/splash/splash.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await Firebase.initializeApp();

  runApp(const MyApp());  
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // Press r to hot reload
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Chusay',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const MainPage(),
      home: Splash()
    );
  }
}



class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError){
            return const Center(child: Text('Algo fue mal'));
          } else if(snapshot.hasData){
            return const AlertPrincipalScreen();
          } else {
            return const StartScreen();
            //return const AuthPage();  
          }
        }
      ),
    );
  }
}
  // This widget is the home page of your application. It is stateful, meaning


// Splash screen temporal  
class Splash extends StatefulWidget{
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainPage()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SplashScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }
}