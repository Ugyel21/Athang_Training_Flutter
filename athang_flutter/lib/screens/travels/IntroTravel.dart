import 'package:athang_flutter/screens/travels/HomeTravel.dart';
import 'package:flutter/material.dart';

class IntroTravel extends StatelessWidget {
  const IntroTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blueAccent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/05/29/00/24/blue-tit-8024809_640.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Indonesia',
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'With us',
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Book your next vacation with us',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(24),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {
                         Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeTravel()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Lets get Started',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.all(16.0),
                    child: const Text('Already have an account? Login'),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
