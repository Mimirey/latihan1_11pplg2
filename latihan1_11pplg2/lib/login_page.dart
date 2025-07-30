import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin='';
  TextEditingController txtUsername= TextEditingController();
  TextEditingController txtPass= TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to our application",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),

            Center(
              child: Image(image: AssetImage('assets/icon.jpeg'),
              width: 100,
              height: 100,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text("please fill username and password to login",
              style: TextStyle(
                color: Color.fromARGB(255, 34, 56, 166)
              ),),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: txtUsername,
                decoration: InputDecoration(
                  label: Text('username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(0, 4, 96, 42),
                      style: BorderStyle.solid
                    )
                  )
                ),
              ),
            ),

             TextField(
              controller: txtPass,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('password'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Color.fromARGB(0, 4, 96, 42),
                    style: BorderStyle.solid
                  )
                )
              ),
            ),

            Row(
              children: [
                ElevatedButton(
                  onPressed:() {
                    if (txtUsername.text == 'admin' && txtPass.text == '123'){
                      setState(() {
                        statusLogin="Berhasil Login";
                      });
                    } else{
                      setState(() {
                        statusLogin="Gagal Login";
                      });
                    }
                
                    print("status"+statusLogin);
                  },
                  child: Text('Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold
                  ),),
                
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 27, 95, 190)),
                    side: WidgetStatePropertyAll(BorderSide(
                      width: 1.5
                    )
                    )
                  ),
                ),

                ElevatedButton(
                onPressed:() {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>RegisterPage()));
                }, 
                child: Text("Register",
                style: TextStyle(
                  color: Color.fromARGB(255, 86, 98, 103)
                ),),)

                
              ],
            ),

            Text(statusLogin),

          ],
        ),
      ),
    );
  }
}