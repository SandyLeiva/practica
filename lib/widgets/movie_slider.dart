import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 5),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: ( _ , int index) => _MoviePoster()
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
        width: 130,
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage( 
                    placeholder: AssetImage('assets/no-image.jpg'), 
                    image: NetworkImage('https://picsum.photos/350/150'),
                    
                    width: 130,
                    height: 160,
                    fit: BoxFit.cover,
                    ),
                ),
              ),
                SizedBox(height: 5),
                Text(
                  'Starwars: Las Fuerzas del mal',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )
              
          ],
        ),
    );
  }
}