import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_designs/screens/fourth_ui.dart';

class ThirdUi extends StatelessWidget {
  const ThirdUi({Key? key}) : super(key: key);

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
            'Payment',
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
                  builder: (context) =>  FourthUi(),
                ),
              );
            },
            icon: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transaction Limit',
                    style: GoogleFonts.alata(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'A free limit up to which you will receive the online payments directly in your bank',
                    style: GoogleFonts.alata(color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LinearPercentIndicator(
                    lineHeight: 6,
                    percent: 0.3,
                    backgroundColor: const Color.fromARGB(255, 237, 233, 233),
                    progressColor: Colors.blue,
                    barRadius: const Radius.circular(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '36,668 left out  of 50,000',
                      style: GoogleFonts.alata(
                          fontSize: 12, color: Colors.grey[500]),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Increase limit',
                      style: GoogleFonts.alata(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Text(
              'Default Method',
              style: GoogleFonts.alata(),
            ),
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Online Payments',
                  style: GoogleFonts.alata(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Text(
              'Payment Profile',
              style: GoogleFonts.alata(),
            ),
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Bank Account',
                  style: GoogleFonts.alata(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Text(
              'Payments Overview',
              style: GoogleFonts.alata(),
            ),
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Life Time',
                  style: GoogleFonts.alata(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 25,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 25,
                    top: 15,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'AMOUNT ON HOLD',
                        style: GoogleFonts.alata(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee,
                              color: Colors.white,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.alata(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 25,
                    top: 15,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'AMOUNT RECEIVED',
                        style: GoogleFonts.alata(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee,
                              color: Colors.white,
                            ),
                            Text(
                              '13,332',
                              style: GoogleFonts.alata(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Transactions',
              style: GoogleFonts.alata(
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 10),
                  primary: const Color.fromARGB(255, 216, 214, 214),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'on hold',
                  style: GoogleFonts.alata(),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 10),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Payouts(15)',
                  style: GoogleFonts.alata(),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 10),
                  primary: const Color.fromARGB(255, 216, 214, 214),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Refunds',
                  style: GoogleFonts.alata(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          listitems(
            'Order #1688068',
            'Jul 12, 02:06 PM',
            '₹799',
            Image.asset('assets/images/img1.jpg'),
            '₹799 depossited to 58860200000138',
          ),
          listitems(
            'Order #1457741',
            'Apr 26, 07:47 AM',
            '₹397.4',
            Image.asset('assets/images/img2.jpg'),
            '₹397.4 depossited to 58860200000138',
          ),
          listitems(
            'Order #1408896',
            'Apr 11, 10:54 AM',
            '₹686.42',
            Image.asset('assets/images/img3.jpg'),
            '₹799 depossited to 58860200000138',
          ),
          listitems(
            'Order #1369633',
            'Apr 2, 11:29 AM',
            '₹1123.5',
            Image.asset('assets/images/img6.jpg'),
            '₹799 depossited to 58860200000138',
          ),
        ],
      ),
    );
  }

  Widget listitems(
      String order, String date, String amount, Image img, String result) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: img,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order,
                  style: GoogleFonts.alata(
                    fontSize: 15,
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.alata(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(amount),
                      Row(
                        children: const [
                          Icon(
                            Icons.noise_control_off_rounded,
                            color: Colors.green,
                          ),
                          Text(
                            'Succesfull',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(result),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
