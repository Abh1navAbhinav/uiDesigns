import 'package:flutter/material.dart';
import 'package:ui_designs/screens/fifth_ui.dart';

import 'package:ui_designs/screens/stack.dart';

// ignore: must_be_immutable
class FourthUi extends StatelessWidget {
  Widget dividers = const Divider(
    thickness: 1,
    endIndent: 6,
    indent: 6,
  );

  FourthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),),
             title: const Padding(
               padding: EdgeInsets.only(left: 20),
               child: Text(
                 'Dukaan Premium',
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 25,
                     fontWeight: FontWeight.bold),
               ),
             ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  FifthUi(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.transparent,
              ))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const StackScreen(),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 10),
            lists(
              icon: const Icon(
                Icons.public_outlined,
                size: 32,
                color: Color.fromARGB(255, 112, 179, 233),
              ),
              title: 'Custom domain name',
              subtitle:
                  'Get your own custom domain and build your brand on the internet.',
            ),
            const SizedBox(height: 10),
            lists(
              icon: const Icon(
                Icons.verified_outlined,
                size: 32,
                color: Color.fromARGB(255, 112, 179, 233),
              ),
              title: 'Custom domain name',
              subtitle:
                  'Get your own custom domain and build your brand on the internet.',
            ),
            const SizedBox(height: 10),
            lists(
              icon: const Icon(
                Icons.computer,
                size: 32,
                color: Color.fromARGB(255, 112, 179, 233),
              ),
              title: 'Custom domain name',
              subtitle:
                  'Get your own custom domain and build your brand on the internet.',
            ),
            const SizedBox(height: 10),
            lists(
              icon: const Icon(
                Icons.headset_mic_outlined,
                size: 32,
                color: Color.fromARGB(255, 112, 179, 233),
              ),
              title: 'Custom domain name',
              subtitle:
                  'Get your own custom domain and build your brand on the internet.',
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                bottom: 10,
              ),
              child: Text(
                'What is Dukaan Premium?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage('assets/images/dukaan img.jpg'),
                ),
              ),
            ),
            const Divider(thickness: 3),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                bottom: 10,
              ),
              child: Text(
                'Frequently asked questions',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            tiles(
              title: '''What type of businesses can use Dukaan Premium''',
              subtitle:
                  'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand-anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
              icon: const Icon(Icons.minimize),
            ),
            dividers,
            tiles(
              title: 'What is your refund policy?',
              icon: const Icon(Icons.add),
            ),
            dividers,
            tiles(
              title: 'will there be an automatic charge after the paid trail?',
              icon: const Icon(Icons.add),
            ),
            dividers,
            tiles(
              title: 'What payment method do you offer?',
              icon: const Icon(Icons.add),
            ),
            dividers,
            tiles(
              title: 'What happens when my free trail ends?',
              icon: const Icon(Icons.add),
            ),
            dividers,
            tiles(
              title: 'What are the terms for the custom domain?',
              icon: const Icon(Icons.add),
            ),
            dividers,
            const Divider(thickness: 3),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 5,
                bottom: 10,
              ),
              child: Text(
                'Need help? Get in touch',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.chat_bubble_outline),
                          Text('Live Chat')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.call_outlined),
                          Text('Phone Call')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 50,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Select Domain',
                        style: TextStyle(
                          letterSpacing: 3,
                          color: Color.fromARGB(255, 56, 160, 141),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Get Premium',
                          style: TextStyle(
                            letterSpacing: 3,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget lists({required String title, required String subtitle, Icon? icon}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 74, 160, 230),
        radius: 27,
        child: CircleAvatar(
          radius: 26,
          backgroundColor: Colors.white,
          child: icon,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(221, 43, 43, 43),
        ),
      ),
      subtitle: Text(subtitle),
    );
  }

  Widget tiles({
    required String title,
    required Icon icon,
    String subtitle = '',
  }) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: icon,
    );
  }
}
