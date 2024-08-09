import 'package:flutter/material.dart';
import 'package:flutter_tutorial/components/button.dart';
import 'package:flutter_tutorial/components/food_title.dart';
import 'package:flutter_tutorial/model/shop.dart';
import 'package:flutter_tutorial/pages/FoodDetailPage.dart';
import 'package:flutter_tutorial/theme/colors.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget{
  const MenuPage({super.key});
  @override
  State<StatefulWidget> createState()=> _MenuPageState();
}
class _MenuPageState extends State<MenuPage>{
  //list menu food
  // List foodMenu=[
  //   Food(name: "Salmon Sushi", rating: "4.9",
  //       imgPath: "lib/images/salmon_sushi.png", price: "21.00"),
  //   Food(name: "Salmon Sushi", rating: "4.9",
  //       imgPath: "lib/images/tuna_sushi.png", price: "21.00"),
  // ];
  // navigate to food detail page
  void navigateToFoodDetail(int index){
    // get the shop and it's menu
    final shop=context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=>  FoodDetailPage(
              food: foodMenu[index]
            ))
    );
  }
  @override
  Widget build(BuildContext context) {
    // get the shop and it's menu
    final shop=context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.grey[800],
      leading: Icon(
          Icons.menu,
          // color: Colors.grey[900],
      ),
      title:Text("Tokyo",
          // style: TextStyle(color: Colors.grey[900])
      ),
          actions: [
            //cart button
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/cartpage');
            }, icon:const Icon(Icons.shopping_cart))
        ],
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(color: primaryColor,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(vertical: 25,horizontal: 30),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const  Text('Get 32% promo',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 20
                        )),
                    const SizedBox(height: 20),
                    // redeem button
                    MyButton(
                        text: "Redeem",
                        onTap: (){}),

                  ],
                ),
                //image
                Image.asset('lib/images/sushi.png',height: 100),

              ],
            ),
          ),
          //search icon
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Search here"
                ))
          ),
          const SizedBox(height: 25),
          //menu
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Food Menu",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 18
            )),
          ),
          const SizedBox(height: 10),
          Expanded(
              flex: 1,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context,index)=>FoodTitle(
                    food: foodMenu[index],
                    onTap: ()=>navigateToFoodDetail(index),
                  ))
          ),
          const SizedBox(height: 25),
          //popular food

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20)
            ),
            margin:const EdgeInsets.only(left: 25,right: 25,bottom: 25),
            padding: const EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 //image
            Image.asset(
            'lib/images/salmon.png',
            height: 60
          ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     //name
                     const Text("Salmon Eggs",
                       style: TextStyle(
                         fontSize: 18
                       ),),
                     const SizedBox(height: 10),
                     //price
                     Text('\$21.00',
                       style: TextStyle(
                         color: Colors.grey[700]
                       ))
                   ],
                 ),
                 const Icon(Icons.favorite_outlined,
                     color: Colors.grey,size: 20
                 )
    ],

          )
          )
        ],
      ),
    );
  }
}