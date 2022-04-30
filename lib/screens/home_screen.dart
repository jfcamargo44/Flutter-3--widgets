import 'package:flutter/material.dart';
import 'package:flutter_widgets/router/app_routes.dart';
import 'package:flutter_widgets/themes/app_theme.dart';



class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
   

    return  Scaffold(
      appBar: AppBar(
        title:   const Text( 'Componentes en flutter' ),
        elevation: 0,
      ),
      body: ListView.separated( 
        itemBuilder: (context, i) =>  ListTile(
          leading:  Icon( menuOptions[i].icon, color: AppTheme.primary, ),
          title:  Text( AppRoutes.menuOptions[i].name ),
          onTap: () {

            //final route = MaterialPageRoute(
            //  builder: (context) => const Listview1Screen());
            // Navigator.push( context, route );

            Navigator.pushNamed(context, menuOptions[i].route);
            
          },
        ), 


        separatorBuilder:( _ , __) => const Divider(), 
        itemCount: menuOptions.length
      ) 
      
    );
  }
}