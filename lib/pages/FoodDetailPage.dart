import 'package:flutter/material.dart';
import 'package:flutter_tutorial/components/button.dart';
import 'package:flutter_tutorial/model/food.dart';
import 'package:flutter_tutorial/model/shop.dart';
import 'package:flutter_tutorial/theme/colors.dart';
import 'package:provider/provider.dart';

class FoodDetailPage extends StatefulWidget {
  final Food food;
  const FoodDetailPage({super.key, required this.food});

  @override
  State<StatefulWidget> createState() => _FoodDetailPage();
}

class _FoodDetailPage extends State<FoodDetailPage> {
  //quantity count
  int quantityCount=0;
  //decrement quanity
  void decrementQuantity(){
    setState(() {
      if (quantityCount>0){
        quantityCount--;
      }
    });
  }
  //increment quantity
  void incrementQuantity(){
    setState(() {
      quantityCount++;
    });
  }
  void addItemToCart(){
// only add to cart if there is something on cart
  if (quantityCount>0){
    //get access to shop
    final shop = context.read<Shop>();
    // add to cart
    shop.addToCart(widget.food, quantityCount);
    // let the user know it successfully
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context)=>
             AlertDialog(
               backgroundColor: primaryColor,
              content: const Text("Successfully added to cart",
                style: TextStyle(
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),

              actions: [
                //ok button
                IconButton(onPressed: (){
                  //pop one to remove dialog box
                  Navigator.pop(context);
                  //pop again to go previous screen
                  Navigator.pop(context);
                }, icon: const Icon(Icons.done,color: Colors.white,))
              ],
            ));
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(widget.food.imgPath, height: 200),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      // star icon
                      Icon(Icons.star, color: Colors.yellow[800]),
                      const SizedBox(width: 10), // Change from height to width
                      // rating number
                      Text(widget.food.rating,
                          style: TextStyle(
                              color: Colors.grey[600], fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(widget.food.name, style: const TextStyle(fontSize: 28)),
                  const SizedBox(height: 25),
                  Text("Description",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900])),
                  const SizedBox(height: 10),
                  Text(
                      "Delicately sliced, fresh Atlantic salmon drapes elegantly over a pillow of perfectly seasoned sushi rice. Its vibrant hue and buttery texture promise an exquisite melt-in-your-mouth experience. Paired with a whisper of wasabi and a side of traditional pickled ginger, our salmon sushi is an ode to the purity and simplicity of authentic Japanese flavors. Indulge in the ocean's bounty with each savory bite.",
                      style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          fontFamily: "Times New Roman",
                          color: Colors.grey[600])),
                  const SizedBox(height: 10),

                ],
              ),
            )
          ),
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //price
          Text("\$${widget.food.price}",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman",
                fontSize: 18
            ),),
          //quantity
          Row(
            children: [
              //minus button
              Container(
                decoration: BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle
                ),
                child: IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.white,
                  onPressed: decrementQuantity,
                ),
              ),
              //quantity count
              SizedBox(
                width: 40,
                child: Center(
                  child: Text(quantityCount.toString(),
                      style:const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial"
                      )),
                ),
              ),
              //plus button
              Container(
                decoration: BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle
                ),
                child: IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  onPressed: incrementQuantity,
                ),
              )
            ],
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: MyButton(text: "Add to cart", onTap: addItemToCart),
      )

    ],
    )
          ),

        ],
      )
    );
  }
}
