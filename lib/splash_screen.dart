import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const Homescreen(),));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue.shade900],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('𝓣𝓻𝓪𝓿𝓮𝓵',
                      style: TextStyle(fontSize: 44, color: Colors.white)),
                  Icon(
                    Icons.airplane_ticket,
                    size: 36,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                '  Find Your Dream \n'
                    'Destinstion With us',
                style: TextStyle(fontSize: 33, color: Colors.white),
              )
            ],
          )),
    );
  }
}
