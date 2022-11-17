import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_designs/screens/sixth_ui.dart';

// ignore: must_be_immutable
class FifthUi extends StatelessWidget {
  Widget dividers = const Divider(
    thickness: 1,
  );
  FifthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Order #1688068',
            style: GoogleFonts.alata(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SixthUi(),
                ),
              );
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: ListView(children: [
          lists1(
              text1: 'May 31, 05:42 PM',
              icon: const Icon(
                Icons.noise_control_off,
                color: Colors.blue,
              ),
              text2: 'Delivered',
              colorText2: Colors.grey),
          dividers,
          lists1(
              text1: '1 ITEM',
              colorText1: Colors.grey,
              icon: const Icon(
                Icons.receipt_outlined,
                color: Colors.blue,
              ),
              text2: 'RECEIPT',
              colorText2: const Color.fromARGB(255, 67, 160, 236)),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const ClipRRect(
                child: Image(
                  image: AssetImage('assets/images/img1.jpg'),
                  width: 50,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore | Men | Navy Blue',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      '1 Piece',
                      style: TextStyle(fontSize: 15),
                    ),
                    const Text(
                      'Size: XL',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 98, 97, 97),
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 11, 117, 204),
                            ),
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.lightBlue[100],
                          ),
                          child: const Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Color.fromARGB(255, 11, 117, 204),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text('X'),
                        ),
                        const Text(
                          '₹799',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 140),
                          child: Text(
                            '₹799',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          dividers,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Item Total',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 60, 58, 58),
                ),
              ),
              Text(
                '₹799',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 60, 58, 58),
                  ),
                ),
                Text(
                  'FREE',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Grand Total',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '₹799',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          dividers,
          lists1(
            text1: 'CUSTOMER DETAILS',
            text2: 'SHARE',
            colorText2: Colors.blue,
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deepa',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: const [
                  Text(
                    '+91-7829000484',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 100,
                      right: 15,
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ),
                  Icon(
                    Icons.whatsapp,
                    color: Colors.green,
                    size: 32,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          textStyle(
              text1: 'Address',
              text2: 'D 1101 Chartered Beverly\nHills , Subramanypuram P.O'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: textStyle(text1: 'City', text2: 'Bangalore'),
              ),
              Expanded(
                child: textStyle(text1: 'Pincode', text2: '560061'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textStyle(text1: 'Payment', text2: 'Online'),
              Container(
                color: const Color.fromARGB(31, 39, 233, 97),
                height: 40,
                width: 80,
                child: const Center(
                  child: Text(
                    'PAID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              )
            ],
          ),
          dividers,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ADDITIONAL INFORMATION',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 101, 99, 99)),
              ),
              const SizedBox(
                height: 10,
              ),
              textStyle(text1: 'State', text2: 'Karnadaka'),
              const SizedBox(
                height: 10,
              ),
              textStyle(text1: 'Email', text2: 'unofficial00345@gmail.com'),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  
                  minimumSize: const Size.fromHeight(40),
                  primary: Colors.blue,
                  side: const BorderSide(
                    
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Share Receipt',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget lists1(
      {required String text1,
      required String text2,
      required Icon icon,
      Color? colorText1,
      Color? colorText2}) {
    return Row(
      children: [
        Expanded(
            child: Text(
          text1,
          style: TextStyle(
            fontSize: 15,
            color: colorText1,
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: icon,
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: colorText2,
          ),
        ),
      ],
    );
  }

  Widget textStyle({required String text1, required String text2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          text2,
          style: const TextStyle(
              fontSize: 16, color: Color.fromARGB(184, 19, 18, 18)),
        )
      ],
    );
  }
}
