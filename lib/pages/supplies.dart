import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_finder/pages/catagories_model.dart';
import 'package:sliver_tools/sliver_tools.dart';

class Supplies extends StatefulWidget {
  const Supplies({super.key});

  @override
  State<Supplies> createState() => _SuppliesState();
}

class _SuppliesState extends State<Supplies> {
  List<CatagoryModel> catagories = [];
  static const backgroundColorOne = Color(0xFFD8AC80);
  static const backgroundColorTwo = Color(0xFFE9EDC9);

  void getCatagories() {
    catagories = CatagoryModel.getCatagories();
  }

  @override
  Widget build(BuildContext context) {
    getCatagories();
    return CustomScrollView(
      slivers:[
        MultiSliver(children: <Widget>[
        SliverPinnedHeader(
          child: Container(
            color: backgroundColorTwo,
            height: 70,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Pet Supplies',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25
                ),),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) =>  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: index % 2 == 0 ? backgroundColorOne :  backgroundColorTwo,
                height: 100,
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                  children: [
                    Text(catagories[index].buttonName,
                    style: const TextStyle(
                      fontSize: 20,
                    ),),
                    Image.asset(catagories[index].imageName,
                    height: 70,)
                  ],
                ),
              ),
            ),
            childCount: catagories.length
          ),
          
        ),
      ]),
      ] 
    );
  }
}
