import 'package:flutter/material.dart';
import 'package:cart_list/color.dart' as color;
import 'description.dart';

class item_list extends StatefulWidget {
  const item_list({Key? key}) : super(key: key);

  @override
  _item_listState createState() => _item_listState();
}

class _item_listState extends State<item_list> {
  List<Product> choices = <Product>[
    Product(images: "assets/pro1.jpg" ,title: 'Product 1', description: "size: 12, price: 300, color: 2"),
    Product(images: "assets/pro2.jpg" ,title: 'Product 2', description: "size: 15, price: 350, color: 1"),
    Product(images: "assets/pro3.jpg" ,title: 'Product 3', description: "size: 13, price: 500, color: 5"),
    Product(images: "assets/pro4.jpg" ,title: 'Product 4', description: "size: 12, price: 700, color: 2"),
    Product(images: "assets/pro1.jpg" ,title: 'Product 5', description: "size: 13, price: 300, color: 1"),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.AppColor.appbar,
        title: Text("Home",
          style: TextStyle(
            fontSize: 20,
            color: color.AppColor.buttonFont,
          ),),
        centerTitle: true,

      ),
      body:  Container(
            child: ListView.builder(
              itemCount: choices.length,
              itemBuilder: (context, index) => Card(
                elevation: 6,
                margin: EdgeInsets.all(10),
                child: RaisedButton(

                  onPressed: (){Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> description(),
                          settings: RouteSettings(
                            arguments: choices[index],)));},
                  color: color.AppColor.tiles,
                  child: ListTile(
                    leading: Image(
                      image: AssetImage(choices[index].images),
                      height: 90,
                      width: 90,
                    ),
                    title: Text(choices[index].title,style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.title,
                      fontWeight: FontWeight.bold,
                    ), ),
                    subtitle: Text(choices[index].description,style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.subtitle,
                    ),),
                  ),
                ),

              ),
            )
        ),

    );
  }
}
class Product {
  const Product({required this.images, required this.title, required this.description});
  final String title;
  final String images;
  final String description;
}

const List<Product> choices = <Product>[
  Product(images: "assets/pro1.jpg" ,title: 'Product 1', description: "size: 12, price: 300, color: 2"),
  Product(images: "assets/pro2.jpg" ,title: 'Product 2', description: "size: 15, price: 350, color: 1"),
  Product(images: "assets/pro3.jpg" ,title: 'Product 3', description: "size: 13, price: 500, color: 5"),
  Product(images: "assets/pro4.jpg" ,title: 'Product 4', description: "size: 12, price: 700, color: 2"),
  Product(images: "assets/pro1.jpg" ,title: 'Product 5', description: "size: 13, price: 300, color: 1"),


];
