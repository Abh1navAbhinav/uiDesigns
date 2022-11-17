import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 120,
              width: 500,
              color: Colors.blue,
             
            ),
            Positioned(
              top: 10,
              left: 14,
              child: CustomCard(
                height: 200,
                width: 320,
                borderRadius: 10,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                    text: ' dukaan\n',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: '              PREMIUM',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Get Dukaan Premium for just\n                 4,999/year',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'All the advanced features for scaling your\n                              business.',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
