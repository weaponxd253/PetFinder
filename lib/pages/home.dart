import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pet Finder',
          style: TextStyle(
            color: Color(0xFFE9EDC9),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
        backgroundColor: Color(0xFFD8AC80),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(decoration: BoxDecoration(
              color: Color(0xFFFEFAE0),
            ),
            child: Text('Pet Finder'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Browse'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Supplies'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
              ListTile(
              title: const Text('Contact'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
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
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var pet in animals) {
      if (pet.toLowerCase().contains(query.toLowerCase())){
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
      if (pet.toLowerCase().contains(query.toLowerCase())){
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