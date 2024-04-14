import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(left:25,right: 25,top: 70),
                child: Image.asset("lib/images/Logo.jpg",height: 240),
              ),
          
              const SizedBox(
                height: 30,
              ),
          
              //title
          
              const Text(
                "Just Do It",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
          
              const SizedBox(
                height: 24,
              ),
          
              // subtitle
              Text(
                "Brand New Sneakers and custom kicks with premium quality",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500]
                ),
              ),
          
              const SizedBox(
                height: 40,
              ),
          
              // start now button
          
              GestureDetector(
                onTap:() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}