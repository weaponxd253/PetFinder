import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class PetMatch extends StatelessWidget {
  
  const PetMatch([Key? key]) : super(key: key);
  

      static const backgroundColorOne =  Color(0xFFD8AC80);
      static const backgroundColorTwo = Color(0xFFE9EDC9);
      
      

  @override
  Widget build(BuildContext context) {
    List<Container> animalCards = [
        Container(
          alignment: Alignment.center,
          color: backgroundColorOne,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0)
                ),
           const CircleAvatar(
                      backgroundColor: backgroundColorTwo,
                      radius: 108,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/cat_two.jpg',
                        ),
                        radius: 90,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    const Text(
                      'Monkey',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      'Cat',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const Divider(
                      height: 100,
                      thickness: 10,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Read More'))
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: backgroundColorTwo,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0)
                ),
           const CircleAvatar(
                      backgroundColor: backgroundColorTwo,
                      radius: 108,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/cat_one.jpg',
                        ),
                        radius: 90,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    const Text(
                      'Hendrix',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      'Cat',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const Divider(
                      height: 100,
                      thickness: 10,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Read More'))
            ],
          ),
        ),
      ];
  

    return Scaffold(
      appBar: appBar(context),
      //drawer: drawer(context),
      body: Flexible(
        child: CardSwiper(
          cardsCount: animalCards.length,
          cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) => animalCards[index] ,
              ),
            ),
          );
  }

  void printText(){
    print('Button Presse');
  }



Widget _featuredPets() => Container(
  
  padding: EdgeInsets.zero,
        child: const Column(
          children: [
            Text(
              'Featured Pets',
              style: TextStyle(
                color: backgroundColorTwo,
                fontSize: 30,
              ),
              ),
            Card(
              elevation: 50,
              shadowColor: backgroundColorTwo,
              color: backgroundColorOne,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: backgroundColorTwo,
                      radius: 108,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/cat_one.jpg',
                        ),
                        radius: 100,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Salam',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.indigo,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cat',
                      style: TextStyle(
                        fontSize: 25
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: buttonString,
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(backgroundColorTwo)),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children:  [
                                Icon(Icons.pets),
                                Text('Read more'),
                              ],
                            ),
                          ),
                        ),
                    ),
                  ],
                )  ,),
              ),
            ),
          ],
        ),
      );
      
  //       Drawer drawer(BuildContext context) {
  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: [
  //         const DrawerHeader(
  //           decoration: BoxDecoration(
  //             color: Color(0xFFFEFAE0),
  //           ),
  //           child: Text('Pet Finder'),
  //         ),
  //         ListTile(
  //           title: const Text('Home'),
  //           onTap: () {
  //             Navigator.pop(context);
  //           },
  //         ),
  //         ListTile(
  //           title: const Text('Browse'),
  //           onTap: () {
  //             Navigator.pop(context);
  //           },
  //         ),
  //         ListTile(
  //           title: const Text('Supplies'),
  //           onTap: () {
  //             Navigator.pop(context);
  //           },
  //         ),
  //         ListTile(
  //           title: const Text('Contact'),
  //           onTap: () {
  //             Navigator.pop(context);
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Pet Finder',
        style: TextStyle(
          color: backgroundColorTwo,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: PetSearch(),
            );
          },
          icon: const Icon(Icons.search),
        )
      ],
      backgroundColor: backgroundColorOne,
      centerTitle: true,
    );
  }
}


void buttonString() {
  print("Button pressed");
}

class PetSearch extends SearchDelegate {
  
//Test List
  List<String> animals = [
    'Roxy',
    'Salam',
    'Blue',
    'Clifford',
    'Scooby',
    'Garfield'
  ];


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var pet in animals) {
      if (pet.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(pet);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var pet in animals) {
      if (pet.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(pet);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
