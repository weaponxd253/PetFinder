import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),
      body: Center(
        child: _featuredPets())
    );
  }

Widget _featuredPets() => Container(
  padding: EdgeInsets.zero,
        child: const Column(
          children: [
            Text(
              'Featured Pets',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
              ),
            Card(
              elevation: 50,
              shadowColor: Colors.amber,
              color: Colors.pink,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.amber,
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
                      'Cat',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.indigo,
                      ),
                    )
                  ],
                )  ,),
              ),
            ),
          ],
        ),
      );
      
        Drawer drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFEFAE0),
            ),
            child: Text('Pet Finder'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Browse'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Supplies'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Pet Finder',
        style: TextStyle(
          color: Color(0xFFE9EDC9),
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
      backgroundColor: const Color(0xFFD8AC80),
      centerTitle: true,
    );
  }
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
      )
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
