import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ( _ , int index){
                return Container(
                  width: 130,
                  height: 190,
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                );
              },
              ),
          ),

        ],
      ),
    );
  }
}


class _MoviePoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}