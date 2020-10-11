import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/logo.dart';
import 'package:chat/widgets/labels.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
       child: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(titulo: 'Registro'),
                 _Form(),
                 Labels(
                   ruta: 'Login',
                   titulo: 'Ya tienes una cuenta?',
                   subtitulo: 'Ingresa ahora',
                 ),
                 Text('Terminos y Condiciones de Uso', style: TextStyle(fontWeight: FontWeight.w200),)
              ],
            ),
          ),
       ),
      ),
   );
  }
} 

class _Form extends StatefulWidget{
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form>{

  final nameCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          BotonAzul(
            text:'Ingrese',
            onPressed: (){
              print(nameCtrl.text);
              print(passCtrl.text);
            } ,
          ),          
        ],
      ),
    );
  }
}

