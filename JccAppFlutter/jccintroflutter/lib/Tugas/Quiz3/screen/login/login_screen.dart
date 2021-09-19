import 'package:flutter/material.dart';

import 'package:jccintroflutter/Tugas/Quiz3/screen/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Screen App"),
      // ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "JCC Quiz 3",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://jabarcodingcamp.id/assets/img/Illustration/RK.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username "),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot Password")),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  // textColor: Colors.white,
                  style: raisedButtonStyle,
                  child: Text("Login"),
                  onPressed: () {
                    // var data1 = nameController.text.toString();
                    print(nameController.text);
                    print(passwordController.text);
                    //soal 1 dan 2 silahkan kerjakan disini atau boleh menggunakan function
                    setState(() {
                      loading = true;
                    });
                    Future.delayed(const Duration(seconds: 2)).then((value) {
                      setState(() {
                        loading = false;
                      });
                      if (nameController.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Username tidak boleh kosong"),
                          ),
                        );
                      } else if (passwordController.text ==
                          'jabarcodingcamp123') {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homescreen(
                                      username: nameController.text,
                                    )),
                            (route) => false);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Password salah. Coba lagi."),
                          ),
                        );
                      }
                    });
                  }
                  //end coding 1 dan 2 sampai sini
                  ),
            ),
            Container(
                child: Row(children: <Widget>[
              Text("   Does not have account?"),
              TextButton(
                  // textColor: Colors.blue,
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {})
            ]))
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);
