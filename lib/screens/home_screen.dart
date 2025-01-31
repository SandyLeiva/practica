import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search_outlined, color: Colors.white,)
            )
        ],
      ),
      body: SingleChildScrollView(
       child: Column(
        children: [
          
          //Tarjetas principales
          CardSwiper(),
          // Slider de peliculas
          MovieSlider()

        ],
      ),
      )
    );
  }
}