import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return
        // Habilitando o scroll quando o teclado abre nos TextFields
        SingleChildScrollView(
      child: SizedBox(
        // Configurando a largura máxima com o context do Material
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      // Importando imagems do assets, declarados no arquivo .yaml
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(height: 30),
                    Text('Tinder',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton.icon(
                        // Adicionando ícone com o Fontawesome
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          size: 35,
                        ),
                        label: Text('Entrar com o Facebook'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(59, 89, 152, 1),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(100))),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton.icon(
                        // Adicionando imagem no botão
                        icon: Container(
                            height: 30,
                            child:
                                Image.asset('assets/images/google-icon.png')),
                        // icon: Icon(
                        //   FontAwesomeIcons.google,
                        //   size: 30,
                        //   color: Colors.red,
                        // ),
                        label: Text('Entrar com o Google',
                            style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 255, 255, 1),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(100))),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFFFE3C72),
                    const Color(0xFF00CCFF),
                  ],
                  begin: const FractionalOffset(0.0, 1.0),
                  end: const FractionalOffset(0.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          _body(),
        ],
      ),
    );
  }
}
