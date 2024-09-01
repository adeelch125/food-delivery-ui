import 'package:flutter/material.dart';
import 'package:food_delivery/assets/assets.dart';
import 'package:food_delivery/screens/item_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage(AssetPaths.imgMenu)),
                  const Spacer(), // Automatically spaces the items evenly
                  GestureDetector(
                    onTap: () {
                      // Add your onPressed action here
                    },
                    child: Container(
                      width: 47,
                      height: 47,
                      decoration: const BoxDecoration(
                        color: Colors.deepOrangeAccent, // Background color
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          AssetPaths.imgSearch,
                          width: 24, // Adjust the size of the image
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Hi Alex',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              const Text(
                'Find your Delicious Food',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildImageContainer(AssetPaths.imgBurger),
                  buildImageContainer(AssetPaths.imgPiza),
                  buildImageContainer(AssetPaths.imgSushi),
                  buildImageContainer(AssetPaths.imgPiza),
                ],
              ),
              const SizedBox(height: 10),
              // Add some spacing between the images and the text
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fast Food',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Italian',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Japanese',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sea Food',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Popular',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 272,
                    width: 162,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const Text(
                            'Melting Cheese',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '44 calories',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                          const SizedBox(height: 7),
                          const Image(
                            image: AssetImage(AssetPaths.imgPizza),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            '\$9.47',
                            style: TextStyle(color: Colors.orange),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Add your onPressed action here
                            },
                            child: Container(
                              width: 17,
                              height: 16,
                              decoration: const BoxDecoration(
                                color: Colors.red, // Background color
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  AssetPaths.imgMathPlus,
                                  width: 12, // Adjust the size of the image
                                  height: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 272,
                    width: 162,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const Text(
                            'Pizza Capricious',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '44 calories',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                          const SizedBox(height: 7),
                          const Image(
                            image: AssetImage(AssetPaths.imgPizza4),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            '\$12.55',
                            style: TextStyle(color: Colors.orange),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 17,
                              height: 16,
                              decoration: const BoxDecoration(
                                color: Colors.red, // Background color
                                shape: BoxShape.rectangle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  AssetPaths.imgMathPlus,
                                  width: 12, // Adjust the size of the image
                                  height: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ItemPage()),
                    );
                  },
                  child: Container(
                    width: 78,
                    height: 78,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent, // Background color
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          blurStyle: BlurStyle.normal,
                          color: Colors.black45,
                          offset: Offset.zero,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Menu',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageContainer(String imagePath) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 24, // Adjust the size of the image
          height: 24,
        ),
      ),
    );
  }
}
