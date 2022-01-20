import 'package:flutter/material.dart';
import 'package:recipeapp/models/resep.dart';

class CardResep extends StatelessWidget {
  final Resep resep;
  const CardResep({Key? key, required this.resep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Hero(
                tag: resep.id,
                child: Image.asset("assets/images/${resep.id}.jpg")),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  resep.nama,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                Icon(
                  resep.favorit ? Icons.favorite : Icons.favorite_outline,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
