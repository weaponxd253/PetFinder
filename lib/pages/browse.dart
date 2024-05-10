import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_finder/pages/catagories_model.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  String fakeText =
      "tf rhoncus vitae. Aliquam interdum lectus lectu  fdfd gdfsag gfdss, vehicula pulvinar libero interdum ac. Quisque a ipsum metus. Nunc lacinia augue dignissim massa auctor, quis facilisis magna facilisis. Cras efficitur, urna et commodo iaculis, turpis mauris placerat mauris, id tincidunt purus turpis ut leo";
  List<Pet> pets = [
    Pet('Roxy', 'Dog', 12, 'images/dog_one.jpg',
        "tf rhoncus vitae. Aliquam interdum lectus lectu  fdfd gdfsag gfdss, vehicula pulvinar libero interdum ac. Quisque a ipsum metus. Nunc lacinia augue dignissim massa auctor, quis facilisis magna facilisis. Cras efficitur, urna et commodo iaculis, turpis mauris placerat mauris, id tincidunt purus turpis ut leo"),
    Pet('Diesel', 'Dog', 9, 'images/dog_two.jpg',
        "tf rhoncus vitae. Aliquam interdum lectus lectu  fdfd gdfsag gfdss, vehicula pulvinar libero interdum ac. Quisque a ipsum metus. Nunc lacinia augue dignissim massa auctor, quis facilisis magna facilisis. Cras efficitur, urna et commodo iaculis, turpis mauris placerat mauris, id tincidunt purus turpis ut leo"),
    Pet('Salem', 'Cat', 2, 'images/cat_one.jpg',
        "tf rhoncus vitae. Aliquam interdum lectus lectu  fdfd gdfsag gfdss, vehicula pulvinar libero interdum ac. Quisque a ipsum metus. Nunc lacinia augue dignissim massa auctor, quis facilisis magna facilisis. Cras efficitur, urna et commodo iaculis, turpis mauris placerat mauris, id tincidunt purus turpis ut leo"),
    Pet('Kink', 'Cat', 1, 'images/cat_two.jpg',
        "tf rhoncus vitae. Aliquam interdum lectus lectu  fdfd gdfsag gfdss, vehicula pulvinar libero interdum ac. Quisque a ipsum metus. Nunc lacinia augue dignissim massa auctor, quis facilisis magna facilisis. Cras efficitur, urna et commodo iaculis, turpis mauris placerat mauris, id tincidunt purus turpis ut leo")
  ];

  List<CatagoryModel> catagories = [];

  void getCatagories() {
    catagories = CatagoryModel.getCatagories();
  }

  void initState() {
    getCatagories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(5),),
        Wrap(
          spacing: 5.0,
          runSpacing: 5.0,
          children: [
            ElevatedButton(
              onPressed: initState,
              child: const Text('Dogs'),
            ),
            ElevatedButton(
              onPressed: initState,
              child: const Text('Cats'),
            ),
            ElevatedButton(
              onPressed: initState,
             child: const Text('Reptiles'),
             ),
             ElevatedButton(
              onPressed: initState, 
              child: const Text('Rabbits')),
            ElevatedButton(
              onPressed: initState,
              child: const Text('Other'),
             ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: pets.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                width: 500,
                height: 500,
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(5.0)),
                    CircleAvatar(
                      radius: 109,
                      backgroundImage: AssetImage(
                        pets[index].petImage,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          pets[index].petName,
                          style: const TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          pets[index].type,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    // const Divider(
                    //   height: 15,
                    //   thickness: 5,
                    //   indent: 30,
                    //   endIndent: 30,
                    //   color: Colors.black,
                    //      ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(5.0)),
                          SizedBox(
                            height: 50,
                            child: Text(
                              pets[index].aboutMe,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.heart_broken),
                              TextButton(
                                onPressed: () {
                                  print('read more pressed');
                                },
                                child: const Text(
                                  'Read More',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 1,
                          )
                        ])
                  ],
                ),
              );
            },
          ),
        )
      ],
    );

  }

  Color randomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}

class Pet {
  String petName;
  String type;
  String petImage;
  String aboutMe;
  int age;

  Pet(this.petName, this.type, this.age, this.petImage, this.aboutMe);
}
