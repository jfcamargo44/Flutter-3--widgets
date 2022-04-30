import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/widgets.dart';

class InPutScreen extends StatelessWidget {
   
  const InPutScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = { 

      'First_name' : 'Fernando',
      'Last_name'  : 'Camargo',
      'email'       : 'FernandoC@dart.com',
      'password'    : '123456',
      'role'        : 'Admin'

    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text( 'Inputs & Forms' ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical:  10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [

           
                 CustomInPutField( labelText: 'Nombre', hintText: 'Nombre de usario', formProperty: 'First_name', formValues: formValues, ),
                 const SizedBox( height: 30, ),
          
                 CustomInPutField( labelText: 'Apellido', hintText: 'Apellido de usario', formProperty: 'Last_name', formValues: formValues, ),
                 const SizedBox( height: 30, ),
          
                 CustomInPutField( keyboardType: TextInputType.emailAddress , labelText: 'Correo', hintText: 'Correo del usario', formProperty: 'email', formValues: formValues, ),
                 const SizedBox( height: 30, ),
          
                 CustomInPutField( obscureText: true, labelText: 'Contraseña', hintText: 'Contraseña del usario', formProperty: 'password', formValues: formValues, ),
                 const SizedBox( height: 30, ),

                 DropdownButtonFormField<String>(
                   items: const [

                      DropdownMenuItem(value: 'Admin',  child: Text( 'Admin'),),
                      DropdownMenuItem(value: 'Superuser',  child: Text( 'Superuser'),),
                      DropdownMenuItem(value: 'Developer',  child: Text( 'Developer'),),
                      DropdownMenuItem(value: 'Jr. Developer',  child: Text( 'Jr. Developer'),),
                      
                   ], 
                   onChanged: ( value ) {
                     print(value);
                     formValues[ 'role' ] = value ?? 'Admin';

                      }
                   ),
          
          
                 ElevatedButton(
                   child:  const SizedBox (
                     width: double.infinity,
                     child: Center( child: Text( 'Guardar'))
                     ),
                   onPressed: () {

                     FocusScope.of(context).requestFocus( FocusNode() );



                     if ( !myFormKey.currentState!.validate() ) {
                       print('Formulario no valido');
                       return;
                     }

                     // * impirmir valroes del formulario
                    print(formValues) ;     
                   }, 
                   )
          
          
              
          
                
              ]
            ),
          ),
        )
      ),
    );
  }
}


