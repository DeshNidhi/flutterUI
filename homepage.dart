import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF9F8FB),
              Color(0xff052E7F),
            ],
            begin: Alignment(0.1, 0),
            end: Alignment(0.5, 1),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Image(
              image: AssetImage("assets/images/logo.png"),
            ),
            const Text(
              "INNOVATE.CREATE.DOMINATE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 243,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () => context.go('/Showcase'),
                child: const Center(
                  child: Text(
                    "SHOWCASE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 50,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.facebook, size: 50),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      size: 50,
                    )),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 50,
                    )),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.pinterest,
                      size: 50,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
