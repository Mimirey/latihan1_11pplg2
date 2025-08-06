import 'package:flutter/material.dart';
import 'widget/register_Widget.dart';

class RegisterPage extends StatefulWidget {
 

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController= TextEditingController();
  final emailController= TextEditingController();
  final passwordController= TextEditingController();
  String? selectedGender;
  DateTime? birthDate;

  @override
  void dispose(){
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Register Page'
      ),),

      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Registration",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),

            Inputform(
              input: "Username",
              controller: nameController, isShow: false,),
            Inputform(input: "Email",
            controller: emailController, isShow: false,),
            Inputform(input: "Password", 
            controller: passwordController, isShow: true,),
        
            
            GenderPick(
              label: "Jenis Kelamin", 
              items: ['Perempuan', 'Laki-laki'], 
              onChanged: (value){
                setState(() {
                  selectedGender= value;
                });
            }),
        
            DatePicker(
              label: 'Tanggal Lahir', 
              onDateSelected: (date){
                setState(() {
                  birthDate= date;
                });
              }),
            
            Button(buttonName: 'Register sekarang', pressed: () {
              
            },)
          ],
        ),
      )
    );
  }
}