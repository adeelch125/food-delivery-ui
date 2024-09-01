import 'package:flutter/material.dart';
import 'package:food_delivery/assets/assets.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int _selectedRadio = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Image(
                        image: AssetImage(AssetPaths.imgMenu),
                      ),
                    ),
                    const SizedBox(width:260,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Image(
                        image: AssetImage(AssetPaths.imgHeart),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'Melting Cheese',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text('\$9.47', style: TextStyle(fontSize: 21)),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 272,
                    height: 268,
                    decoration: const BoxDecoration(
                      color: Colors.transparent, // Background color
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Image.asset(
                        AssetPaths.imgMeltPizza,
                        width: 272, // Adjust the size of the image
                        height: 268,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Row(
                    children: [
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
                              AssetPaths.imgSubtract,
                              width: 12, // Adjust the size of the image
                              height: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('\2', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(width: 10),
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
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: _selectedRadio,
                            onChanged: _handleRadioValueChange,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 1.0), // Adjust this value to decrease the space
                            child: Text('\$6.44',style: TextStyle(fontSize: 11),),
                          ),
                          const Text('8 inch',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _selectedRadio,
                            onChanged: _handleRadioValueChange,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 1.0), // Adjust this value to decrease the space
                            child: Text('\$15.32',style: TextStyle(fontSize: 11),),
                          ),
                          const Text('12 inch',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _selectedRadio,
                            onChanged: _handleRadioValueChange,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 1.0), // Adjust this value to decrease the space
                            child:Text('\$15.32',style: TextStyle(fontSize: 11),),
                          ),
                          const Text('16 inch',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AssetPaths.imgStar)),
                          Text('4.9')
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage(AssetPaths.imgEmoji)),
                          Text('44 Calories')
                        ],
                      ),
                      SizedBox(
                        width: 48,
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage(AssetPaths.imgTimer)),
                          Text('20 - 30 min')
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {

                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      // Background color
                      minimumSize: const Size(310, 53),
                      // Width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'ADD TO CART',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
