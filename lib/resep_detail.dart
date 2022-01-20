import 'package:flutter/material.dart';
import 'package:recipeapp/models/resep.dart';

class ResepDetail extends StatefulWidget {
  final Resep resep;
  const ResepDetail({Key? key, required this.resep}) : super(key: key);

  @override
  State<ResepDetail> createState() => _ResepDetailState();
}

class _ResepDetailState extends State<ResepDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.resep.nama),
      ),
      body: Column(
        children: [
          Hero(
              tag: widget.resep.id,
              child: Image.asset("assets/images/${widget.resep.id}.jpg")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.resep.nama,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.resep.favorit = !widget.resep.favorit;
                      });
                    },
                    icon: Icon(
                      widget.resep.favorit
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: Colors.red,
                      size: 30,
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: widget.resep.bahan.length,
                itemBuilder: (BuildContext context, int index) {
                  final bahan = widget.resep.bahan[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${bahan.qty} ${bahan.satuan} ${bahan.nama}",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
