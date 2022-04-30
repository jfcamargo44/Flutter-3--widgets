import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/themes/app_theme.dart';

class AnimatedScreen extends StatefulWidget {

  
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height =50;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _bordeRadius = BorderRadius.circular(20);

  void changeShape (){
    final rnd = Random();

        _width = rnd.nextInt(300).toDouble() +70;
        _height = rnd.nextInt(300).toDouble() +70;
        _color = Color.fromRGBO(
          rnd.nextInt(255), 
          rnd.nextInt(255), 
          rnd.nextInt(255), 
          1);
        _bordeRadius = BorderRadius.circular(rnd.nextInt(100).toDouble() +10);
        setState(() {
                
              });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Conatiner'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration( milliseconds: 400),
           curve: Curves.easeOutCubic,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _bordeRadius

           ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_circle_outline_rounded, size: 35,),
          onPressed: ()=> changeShape()
          ),
    );
  }
}