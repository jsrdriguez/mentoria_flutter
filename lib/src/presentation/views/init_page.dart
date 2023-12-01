import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Iniciemos"),
          const SizedBox(height: 50),
          SocialButton(
            text: "Continua con Facebook",
            icon: Image.asset("assets/social_icons/facebook.png", width: 20),
            onClick: () => {},
          ),
          SocialButton(
            text: "Continua con Google",
            icon: Image.asset("assets/social_icons/google.png", width: 20) 
          ),
          SocialButton(
            text: "Continua con Apple",
            icon: Image.asset("assets/social_icons/apple.png", width: 20) 
          ),
          const DividerLogin(),
          const GotoLogin()
        ],
      ),
    ));
  }
}

class DividerLogin extends StatelessWidget {
  const DividerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 237, 235, 235),
              thickness: 2.0,
              endIndent: 15.0,
            ),
          ),
          Text("or", style: TextStyle(
            color: Color.fromARGB(255, 101, 101, 101),
            fontSize: 18.0,
            fontWeight: FontWeight.w700
          ),),
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 237, 235, 235),
              thickness: 2.0,
              indent: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final Image icon;
  final void Function()? onClick;
  
  const SocialButton({ 
    super.key, 
    this.text = "", 
    this.onClick, 
    required this.icon 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            icon,
            const SizedBox(width: 5),
            Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
          ]
        ),
      ),
    );
  }
}

class GotoLogin extends StatelessWidget {
  const GotoLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromRGBO(77, 93, 250, 1)
        ),
        child: const Text("Iniciar con correo", style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),),
      ),
    );
  }
}
