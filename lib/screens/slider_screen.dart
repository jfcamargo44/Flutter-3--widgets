import 'package:flutter/material.dart';
import 'package:flutter_widgets/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
         children:[ 

           const SizedBox( height: 50,),
           
           Slider.adaptive(
             min: 50,
             max: 400,
             activeColor: AppTheme.primary,
             value: _sliderValue, 
           onChanged: _sliderEnabled 
           ? ( value ) {
             _sliderValue = value;
             setState(() {});
            }
            : null
           ),

              //Checkbox(
              //  value: _sliderEnabled, 
              //  onChanged: ( value ) {
              //
              //    _sliderEnabled = value ?? true ;
              //   setState(() {});
              //  }),
              //Switch(
              //  value: _sliderEnabled, 
              //  onChanged: ( value) => setState(() {
              //    _sliderEnabled = value ;})
              // ),

             CheckboxListTile(
               activeColor: AppTheme.primary,
               title: const Text( 'Habilitar Slider'),
               value: _sliderEnabled, 
               onChanged: ( value ) => setState(() { _sliderEnabled = value ?? true;})
               ),

              SwitchListTile.adaptive(
                 title: const Text('Habilitar Slider'),
                 activeColor: AppTheme.primary,
                 inactiveThumbColor: Colors.red.shade400,
                 inactiveTrackColor: Colors.red.shade200 ,
                 value: _sliderEnabled, 
                 onChanged: ( value ) => setState((){ _sliderEnabled= value;})
                 ),

              const AboutListTile(),


              

              const SizedBox( height: 20,),
      
              Expanded(
                child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage('https://static.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20180410032118&path-prefix=es'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  
                  ),
              ),
            ),

              
      
      
      
      
         ]
      ),
    );
  }
}