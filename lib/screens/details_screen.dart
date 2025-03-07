import 'package:flutter/material.dart';
import 'package:peliculas/widgets/casting_cards.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? '';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
              _Overview(),
              _Overview(),
              _Overview(),
              CastingCards()

              ])
            )
        ],
      )
    );
  }
}


class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text(
            'movie.title',
          style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://picsum.photos/350/150'),
          fit: BoxFit.cover,
          
          ),
      ),

    );
  }
}

class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'), 
                    image: NetworkImage('https://picsum.photos/200/300'),
                    height: 150,
            ),
          ),

          SizedBox( width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('movie.title', style: textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 2),
              Text('movie.originalTitle', style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis),

              Row(
                children: [
                  Icon(Icons.start_outlined, size: 15, color: Colors.grey),
                  SizedBox(width: 5,),
                  Text('movie.voteAverage', style: textTheme.titleMedium)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Veniam deserunt eiusmod ipsum ea. Aliquip cupidatat do proident irure.Cillum cupidatat cupidatat ullamco laboris consequat. Aute proident minim officia in ut ex non nostrud ex irure magna ex dolore. Commodo in nostrud nulla nostrud sunt dolor anim anim. Lorem aute pariatur proident occaecat dolor sit irure incididunt ',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.headlineSmall,

        ),
       
    );
  }
}

