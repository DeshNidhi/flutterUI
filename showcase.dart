import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Showcase extends StatelessWidget {
  Showcase({super.key});

  final List<String> imgList = [
    "https://images.unsplash.com/photo-1721614461028-6e80fa904ba0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1702024740455-3272b8d96eb2?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1721199111143-aac4b595f580?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff32167D),
        title: const Center(
            child: Text(
          'Web Development',
          style: TextStyle(color: Colors.white),
        )),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () => GoRouter.of(context).go('/'),
              child: const Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            const Center(child: Text("INNOVATE.CREATE.DOMINATE")),
            const SizedBox(
              height: 100,
            ),
            ListTile(
              title: const Text('Web Development'),
              onTap: () => context.go('/'),
            ),
            ListTile(
              title: const Text('Digital Marketing'),
              onTap: () => context.go('/'),
            ),
            ListTile(
              title: const Text('Graphic Design'),
              onTap: () => context.go('/'),
            ),
            ListTile(
              title: const Text('SEO and SMO'),
              onTap: () => context.go('/'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: imgList
                .map(
                  (e) => Center(
                    child: Image.network(e),
                  ),
                )
                .toList(),
            options:
                CarouselOptions(enlargeCenterPage: true, enlargeFactor: 0.3),
          ),
          buildCarouselIndicator(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 26.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 26.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 26.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 26.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 26.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Description details written here for more than three week",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 320,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 50,
                  )),
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
    );
  }

  buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }
}
