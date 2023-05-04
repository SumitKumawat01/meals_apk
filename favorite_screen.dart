import 'dart:async';

import'package:flutter/material.dart';
import'./meal.dart';
import'./meal_item.dart';

class FavoriteScreen extends StatelessWidget{
  final List<Meal>favoriteMeals;

  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext){
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('The favorite'),
      );
    }else{
      return ListView.builder(
        itemBuilder: (ctx,index){
          return MealItem(
            id:favoriteMeals[index].id,
            title:favoriteMeals[index].title,
            imageUrl:favoriteMeals[index].imageUrl,
            affordability:favoriteMeals[index].affordability,
            complexity:favoriteMeals[index].complexity,
            duration:favoriteMeals[index].duration.toString(),
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}