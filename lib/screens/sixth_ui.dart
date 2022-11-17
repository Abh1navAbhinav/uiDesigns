import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_designs/screens/first_ui.dart';

class SixthUi extends StatelessWidget {
  SixthUi({Key? key}) : super(key: key);

  final List<Image> img = [
    Image.asset("assets/images/img6.jpg"),
    Image.asset("assets/images/img1.jpg"),
    Image.asset("assets/images/img2.jpg"),
    Image.asset("assets/images/img3.jpg"),
    Image.asset("assets/images/image8.jpg"),
  ];

  final List<String> name = [
    'Adidas | Combo Pack',
    'Couch | Men T shirt',
    'Mug | Explore orchard',
    'Butterfly | Gas Stove ',
    'Mug | Orchard Painted',
  ];

  final List<String> rate = [
    '₹ 1999',
    '₹ 799',
    '₹ 399',
    '₹ 1699',
    '₹ 449',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 226, 226),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.transparent,
            ),
          ),
          title: Center(
            child: Text(
              'Catalogue',
              style: GoogleFonts.alata(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstUi()),
                    (route) => false);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
          bottom: TabBar(
              labelStyle: GoogleFonts.alata(
                fontSize: 20,
              ),
              labelColor: Colors.white,
              tabs: const [
                Tab(text: 'Products'),
                Tab(text: 'Categories'),
              ]),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.separated(
              itemBuilder: (BuildContext context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 185,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: img[index]),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                '1 Piece',
                                style: TextStyle(fontSize: 13),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                rate[index],
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'In Stock',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.green),
                              )
                            ],
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.more_vert,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Switch(
                                        value: true, onChanged: (bool value) {})
                                  ],
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      const Divider(
                        indent: 5,
                        endIndent: 5,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.share_outlined,
                            color: Colors.black54,
                          ),
                          Text('  Share Products'),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: name.length,
            ),
          ),
        ),
      ),
    );
  }
}
