import 'package:flutter/material.dart';
import 'package:food_app/utility/item_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ItemCard()],);
  }
}