import 'package:flutter/material.dart';

class CatagoryModel{
  String buttonName;
  String imageName;

  CatagoryModel({
    required this.buttonName,
    required this.imageName
  });

  static List<CatagoryModel> getCatagories(){
    List<CatagoryModel> catagories = [];

   catagories.add(
      CatagoryModel(
        buttonName: 'New',
        imageName: 'images/icons/new.png'
        ),
    );

    catagories.add(
      CatagoryModel(
        buttonName: 'Dogs',
        imageName: 'images/icons/dog.png'
        ),
    );

    catagories.add(
      CatagoryModel(
        buttonName: 'Cats',
        imageName: 'images/icons/cat.png'
        ),
    );

    catagories.add(
      CatagoryModel(
        buttonName: 'Fish',
        imageName: 'images/icons/fish.png'
        ),
    );

       catagories.add(
      CatagoryModel(
        buttonName: 'Reptiles',
        imageName: 'images/icons/reptile.png'
        ),
    );

       catagories.add(
      CatagoryModel(
        buttonName: 'Birds',
        imageName: 'images/icons/bird.png'
        ),
    );

       catagories.add(
      CatagoryModel(
        buttonName: 'By Brand',
        imageName: 'images/icons/label.png'
        ),
    );

    catagories.add(
      CatagoryModel(
        buttonName: 'Other',
        imageName: 'images/icons/interface.png'
        ),
    );
    return catagories;
  }
}