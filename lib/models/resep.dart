import 'bahan.dart';

class Resep {
  String id;
  String nama;
  bool favorit;
  List<Bahan> bahan;

  Resep(
      {required this.id,
      required this.nama,
      required this.bahan,
      this.favorit = false});
}

List resepList = [
  Resep(
    id: "ikan-kuwe-bakar",
    nama: "Ikan Kuwe Bakar",
    bahan: [
      Bahan(qty: 2, satuan: "ekor", nama: "Ikan Kuwe"),
      Bahan(qty: 1, satuan: "buah", nama: "Jeruk Nipis"),
      Bahan(qty: 2, satuan: "sdm", nama: "Margarin"),
      Bahan(qty: 1, satuan: "sdt", nama: "Garam"),
      Bahan(qty: 1, satuan: "sdm", nama: "Minyak")
    ],
  ),
  Resep(id: "daging-goreng-crispy", nama: "Daging Goreng Crispy", bahan: [
    Bahan(qty: 500, satuan: "gram", nama: "Daging Has Dalam"),
    Bahan(qty: 200, satuan: "g", nama: "Tepung Panir"),
    Bahan(qty: 2, satuan: "butir", nama: "Telur Ayam"),
    Bahan(qty: 500, satuan: "ml", nama: "Minyak"),
    Bahan(qty: 200, satuan: "gram", nama: "Tepung Terigu"),
    Bahan(qty: 3, satuan: "siung", nama: "Bawang Putih"),
    Bahan(qty: 1, satuan: "sdt", nama: "Garam")
  ]),
  Resep(id: "kentang-ayam-cincang", nama: "Kentang Ayam Cincang", bahan: []),
  Resep(id: "nasi-goreng-kambing", nama: "Nasi Goreng Kambing", bahan: []),
  Resep(id: "perkedel-kentang", nama: "Perkedel Kentang", bahan: []),
  Resep(id: "soto-ayam-banyumas", nama: "Soto Ayam Banyumas", bahan: []),
];
