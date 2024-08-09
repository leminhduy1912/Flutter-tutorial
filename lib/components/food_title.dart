import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/food.dart';

class FoodTitle extends StatelessWidget{
  final Food food;
  final void Function()? onTap;
  const FoodTitle ({
    super.key,
    required this.food,
    required this.onTap,
});
  @override
  Widget build(BuildContext context) {
return GestureDetector(
  onTap: onTap,
  child: Container(
    margin: const EdgeInsets.only(left: 25),
    padding: const EdgeInsets.all(25),
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //image
        Image.asset(food.imgPath,height: 120),
        //text
        Text(food.name,
            style: const TextStyle(
                fontSize: 20
            )),
        //price+rating
        SizedBox(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$' + food.price,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700])),
              Row(
                children: [
                  Icon(Icons.star,
                      color: Colors.yellow[800]),
                  Text(food.rating,
                    style: const TextStyle(
                        color: Colors.grey
                    ),),
                ],
              )
              //rating

            ],

          ),
        )
      ],
    ),
  )
) ;
  }
  
}