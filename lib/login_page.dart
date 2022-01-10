import 'package:flutter/material.dart';
import 'package:sig_proyect/global_var.dart';
import 'package:sig_proyect/models/login_register.dart';
import 'package:sig_proyect/services/login_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerapp = TextEditingController();
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lets Log In!'),
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        const Text('Ingrese sus datos!'),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Image.asset(
                          'assets/images/login.jpeg',
                          height: 160.0,
                        ),
                        _tipoapptextfield(),
                        const SizedBox(
                          height: 15.0,
                        ),
                        _usernametextfield(),
                        const SizedBox(
                          height: 15.0,
                        ),
                        _userpassintextfield(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        _bottomSubmit(),
                        const SizedBox(
                          height: 15.0,
                        ),
                        _bottomregister(),
                        const SizedBox(
                          height: 15.0,
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }

  Widget _tipoapptextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerapp,
          decoration: const InputDecoration(
            icon: Icon(Icons.toys_rounded),
            labelText: 'Tipo',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _usernametextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerUser,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@gmail.com',
            labelText: 'UserName',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _userpassintextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerPass,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock),
            hintText: '***',
            labelText: 'Put your Password',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottomSubmit() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Submit'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          color: Colors.greenAccent,
          onPressed: () async {
            
              Navigator.pushReplacementNamed(context, '/ver_datos');
              
            
          });
    });
  }

  Widget _bottomregister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register_user_page');
          },
          child: const Text(
            "Registrate",
            style: TextStyle(fontSize: 10),
          ),
        ),
      );
    });
  }
}
