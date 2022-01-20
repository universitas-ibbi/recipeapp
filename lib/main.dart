import 'package:flutter/material.dart';
import 'package:recipeapp/components/card_resep.dart';
import 'package:recipeapp/models/resep.dart';
import 'package:recipeapp/resep_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Recipe App"),
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
            itemCount: resepList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResepDetail(resep: resepList[index]);
                  }));
                },
                child: CardResep(resep: resepList[index]),
              );
            }),
      ),
    );
  }
}
