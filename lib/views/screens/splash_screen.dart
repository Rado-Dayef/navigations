import 'package:flutter/material.dart';
import 'package:test_navigations/models/services/api_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    ApiServices apiServices = ApiServices();
    apiServices.getUsers().then(
          (response) => mounted
              ? Navigator.of(context).pushReplacementNamed(
                  "/home",
                  arguments: response,
                )
              : null,
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/toDo.png",
                height: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Title",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Subtitle",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.only(
          bottom: 10,
        ),
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
  }
}
