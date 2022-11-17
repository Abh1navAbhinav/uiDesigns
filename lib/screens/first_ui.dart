import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_designs/screens/second_ui.dart';

class FirstUi extends StatelessWidget {
  const FirstUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'Additonal Information',
          style: GoogleFonts.alata(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondUi()));
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(
                Icons.share_outlined,
                color: Colors.black54,
              ),
              title: Text(
                'Share Dukaan App',
                style: GoogleFonts.alef(),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
              ),
              title: Text(
                'Change Language',
                style: GoogleFonts.alef(),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.whatsapp_rounded,
                color: Colors.black54,
              ),
              title: Text(
                'WhatsApp Chat Support',
                style: GoogleFonts.alef(),
              ),
              trailing: const Icon(
                Icons.toggle_on,
                color: Colors.blue,
                size: 40,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.lock_outline,
                color: Colors.black54,
              ),
              title: Text(
                'Privacy Policy',
                style: GoogleFonts.alef(),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.star_outline,
                color: Colors.black54,
              ),
              title: Text(
                'Rate Us',
                style: GoogleFonts.alef(),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.black54,
              ),
              title: Text(
                'Sign Out',
                style: GoogleFonts.alef(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
