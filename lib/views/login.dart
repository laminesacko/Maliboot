import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:maliboot_challenge/views/acceuil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Backgroung(), // Le background
          ListView(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              _header(), // Le header de la page connexion
              const SizedBox(height: 20),
              _body(context) // Le body de la page connexion
            ],
          ),
        ],
      ),
    );
  }

  Container _body(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 185,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              icon: Icon(Icons.email),
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.grey),
                            hintText: "Mot de passe",
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.visibility_off,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1500),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Mot de passe oublie?",
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1600),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context)=> HomePage()));
                  },
                  height: 50,
                  // margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.deepPurple[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // decoration: BoxDecoration(
                  // ),
                  child: const Center(
                    child: Text(
                      "Se connecter",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1700),
                child: const Text(
                  "connectez-vous avec",
                  style: TextStyle(color: Colors.grey),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: MaterialButton(
                        onPressed: () {},
                        height: 50,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            "Facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: MaterialButton(
                        onPressed: () {},
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            "Google",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: const Text(
                "Connexion",
                style: TextStyle(color: Colors.white, fontSize: 40),
              )),
          const SizedBox(
            height: 10,
          ),
          FadeInUp(
              duration: const Duration(milliseconds: 1300),
              child: const Text(
                "Bienvenue à vous",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ],
      ),
    );
  }
}

class Backgroung extends StatelessWidget {
  const Backgroung({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.deepPurple.shade900,
        Colors.deepPurple.shade800,
        Colors.deepPurple.shade400
      ])),
    );
  }
}
