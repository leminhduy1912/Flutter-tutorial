import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/shop.dart';
import 'package:flutter_tutorial/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tutorial/model/food.dart';
import 'package:flutter_tutorial/components/button.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food,BuildContext context) {
    //get access to shop
    final shop = context.read<Shop>();
    //remove from cart
    shop.removeToCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "My Cart",
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Consumer<Shop>(
        builder: (context, value, child) => Column(
          //CUSTOMER CART
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // get food from cart
                  final Food food = value.cart[index];
                  // get food name
                  final String foodName = food.name;
                  // get food price
                  final String foodPrice = food.price;
                  return Container(
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                        onPressed: ()=>removeFromCart(food,context),
                      ),
                    ),
                  );
                },
              ),
            ),
            //PAY BUTTON
            Padding(
                padding: const EdgeInsets.all(25),
              child: MyButton(
                  text: "Pay Now",
                  onTap: (){}
              ),
            )

          ],
        ),
      ),
    );
  }
}
