import 'package:flutter/material.dart';
import 'package:fluttshop/utilities/font.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        CategoryCard(
          icon: Icon(Icons.book,size: 32.0,),
          name: 'Book',
        ),
          CategoryCard(
            icon: Icon(Icons.camera,size: 32.0,),
            name: 'Camera',
          ),
          CategoryCard(
            icon: Icon(Icons.videogame_asset,size: 32.0,),
            name: 'Games',
          ),
          CategoryCard(
            icon: Icon(Icons.laptop_mac,size: 32.0,),
            name: 'Laptops',
          ),
          CategoryCard(
            icon: Icon(Icons.tv,size: 32.0,),
            name: 'televisions',
          ),
          CategoryCard(
            icon: Icon(Icons.watch,size: 32.0,),
            name: 'Watches',
          ),
        ],
      ),
    );
  }


}

class CategoryCard extends StatelessWidget {
  final Icon icon;
  final String name;

  CategoryCard({this.name,this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
              color: Colors.yellow,

        ),
        width:80.0,
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            children: [
              icon,
              SizedBox(
                height: 16.0,
              ),
              Center(child: Text(name,style: Style.itemName,)),
            ],
          ),
        ),
      ),
    );
  }
}
