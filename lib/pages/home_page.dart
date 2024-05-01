import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_finder/pages/browse.dart';
import 'package:pet_finder/pages/contact.dart';
import 'package:pet_finder/pages/home.dart';
import 'package:pet_finder/pages/supplies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int pageIndex = 0;

final pages = [
  const PetMatch(),
  const Browse(),
  const Supplies(),
  const Contact()
];

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: const PetMatch().appBar(context),
    body: pages[pageIndex],
    bottomNavigationBar: buildNavBar(context),
  );
}


  Container buildNavBar(BuildContext context){
          const backgroundColorOne =  Color(0xFFD8AC80);

   return Container(
          height: 60,
          decoration: const BoxDecoration(
            color: backgroundColorOne,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0 
                ? const Icon(
                    Icons.pets_rounded,
                    color: Colors.white,
                    size: 35,
                )
                : const Icon(
                     Icons.pets_outlined,
                    color: Colors.black,
                    size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                ? const Icon(
                  Icons.manage_search,
                  color: Colors.white,
                  size: 35,
                )
                : const Icon(
                  Icons.manage_search_outlined,
                  color: Colors.black,
                  size: 35,
                )
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                ? const Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 35,
                )
                : const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 35,
                )
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                ? const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 35,
                )
                : const Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          ),
        );
}
}

