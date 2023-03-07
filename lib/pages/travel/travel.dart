import 'package:chusay_project/pages/map/map.dart';
import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget{
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage>{

  double _opacity1 = 0.6;
  double _opacity2 = 0.6;
  double _opacity3 = 0.6;
  double _opacity4 = 0.6;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Viajes'),
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.map),
            tooltip: 'Show Snackbar',
            /*onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },*/
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              const SizedBox(
                  width: 100,
                  height: 20,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity1 == 0.6){
                      _opacity1 = 1;
                    } else {
                      _opacity1 = 0.6;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 15, left: 15,right: 15),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity1,
                    image: const NetworkImage("https://lp-cms-production.imgix.net/2019-06/9b0206e3ee0ac4b4b39d4d07b2080bd4-machu-picchu.jpg"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Cuzco", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity2 == 0.6){
                      _opacity2 = 1;
                    } else {
                      _opacity2 = 0.6;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15, left: 15,right: 15, top: 5),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity2,
                    image: const NetworkImage("https://images.pexels.com/photos/7144192/pexels-photo-7144192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Lima", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity3 == 0.6){
                      _opacity3 = 1;
                    } else {
                      _opacity3 = 0.6;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15, left: 15,right: 15, top: 5),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity3,
                    image: const NetworkImage("https://www.peru.travel/Contenido/Destino/Imagen/pe/27/1.1/Principal/Plaza%20de%20Armas%20Arequipa.jpg"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Arequipa", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity4 == 0.6){
                      _opacity4 = 1;
                    } else {
                      _opacity4 = 0.6;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15, left: 15,right: 15, top: 5),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity4,
                    image: const NetworkImage("https://www.peru.travel/Contenido/Experiencia/Imagen/pe/1150/1.2/banos-inca.jpg"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Cajamarca", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
                height: 20,
              ),
            ],
          ),
        ),
    );
  }
}