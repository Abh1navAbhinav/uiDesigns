import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_designs/screens/third_ul.dart';

class SecondUi extends StatelessWidget {
  const SecondUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 236, 236),
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
              'Manage Store',
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
                    builder: (context) => const ThirdUi(),
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
        body: SafeArea(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2.3,
            ),
            primary: false,
            children: [
              cardTile(
                text: 'Martketing \nDesign',
                icon: const Icon(
                  Icons.volume_up,
                  color: Colors.white,
                ),
                color: Colors.orange,
              ),
              cardTile(
                text: 'Online \nPayment',
                icon: const Icon(
                  Icons.currency_rupee_rounded,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(255, 111, 195, 114),
              ),
              cardTile(
                text: 'Discount \nCoupons',
                icon: const Icon(
                  Icons.new_releases_outlined,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(216, 255, 180, 59),
              ),
              cardTile(
                text: 'My \nCustomers',
                icon: const Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(255, 74, 198, 169),
              ),
              cardTile(
                text: 'Store QR \nCode',
                icon: const Icon(
                  Icons.qr_code_scanner_sharp,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(255, 148, 143, 143),
              ),
              cardTile(
                  text: 'Extra \nCharges',
                  icon: const Icon(
                    Icons.currency_rupee_sharp,
                    color: Colors.white,
                  ),
                  color: const Color.fromARGB(255, 105, 45, 207)),
              cardTile(
                text: 'Order \nForm',
                icon: const Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(255, 182, 60, 226),
                isNew: true,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paste),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: "Products",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: "Manage",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Account",
            ),
          ],
        ));
  }

  Widget cardTile(
      {required String text,
      required Icon icon,
      required Color color,
      bool isNew = false}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: color),
                  padding: const EdgeInsets.all(1),
                  child: icon,
                ),
              ),
              isNew
                  ? Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          ' NEW',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              text,
              style:
                  GoogleFonts.actor(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
