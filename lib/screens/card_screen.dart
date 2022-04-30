import 'package:flutter/material.dart';

import 'package:flutter_widgets/Widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical:10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 20 ),
          CustomCardType2(  imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Che_ne_saj.jpg/1024px-Che_ne_saj.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/20101020_Sheep_shepherd_at_Vistonida_lake_Glikoneri_Rhodope_Prefecture_Thrace_Greece.jpg/1024px-20101020_Sheep_shepherd_at_Vistonida_lake_Glikoneri_Rhodope_Prefecture_Thrace_Greece.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2( name:'Hermoso paisaje', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Freudenberg_sg_Switzerland.jpg/1024px-Freudenberg_sg_Switzerland.jpg',),
          SizedBox( height: 100 ),
        ],
      ),
    );
  }
}




