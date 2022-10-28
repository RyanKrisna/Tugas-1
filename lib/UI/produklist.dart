import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Intel Core i9 12900K Extreme Overclocked PC",
                  description:
                      "Asus ROG G15CK-I7659T - ASUS PC GAME/ ASUS PC GAMING/ASUS PC i7",
                  price: 1000,
                  image: "pc1.jpeg",
                  star: 1,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Intel Core i9 12900K Extreme Overclocked PC",
              description: "ASUS PC GAME/ ASUS PC GAMING/ASUS PC i7",
              price: 1000,
              image: "pc1.jpeg",
              star: 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "iBUYPOWER Gaming PC",
                      description:
                          " PComputer Desktop Element 9260 (Intel Core i7-9700F 3.0Ghz, NVIDIA GeForce GTX 1660 Ti 6GB, 16GB DDR4, 240GB SSD, 1TB HDD, Wi-Fi & Windows 10 Home) Black",
                      price: 1599999,
                      image: "pc2.jpeg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "iBUYPOWER Gaming PC",
                description:
                    "PComputer Desktop Element 9260 (Intel Core i7-9700F 3.0Ghz, NVIDIA GeForce GTX 1660 Ti 6GB, 16GB DDR4, 240GB SSD, 1TB HDD, Wi-Fi & Windows 10 Home) Black",
                price: 800,
                image: "pc2.jpeg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "CyberpowerPC Wyvern",
                      description:
                          "Gaming PC - Intel Core i5-10400F, Nvidia GTX 1650 4GB, 16GB RAM, 500GB NVMe SSD, 450W 80+ PSU, Wi-Fi, Windows 11, Onyxia III RGB",
                      price: 3999999,
                      image: "pc3.jpeg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "CyberpowerPC Wyvern",
                description:
                    "Gaming PC - Intel Core i5-10400F, Nvidia GTX 1650 4GB, 16GB RAM, 500GB NVMe SSD, 450W 80+ PSU, Wi-Fi, Windows 11, Onyxia III RGB",
                price: 2000,
                image: "pc3.jpeg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "CORSAIR ONE i300",
                      description:
                          "Compact Gaming PC, i9-12900K, Liquid-Cooled RTX 3080 Ti, 2TB M.2, 64GB DDR5-4800, Win11 Pro",
                      price: 3999999,
                      image: "pc4.jpeg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "CORSAIR ONE i300",
                description:
                    "Compact Gaming PC, i9-12900K, Liquid-Cooled RTX 3080 Ti, 2TB M.2, 64GB DDR5-4800, Win11 Pro",
                price: 1500,
                image: "pc4.jpeg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "8Pack Cryocube",
                      description:
                          "Intel Core i9 12900K Extreme Overclocked PC",
                      price: 8888888,
                      image: "pc5.jpeg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "8Pack Cryocube",
                description: "Intel Core i9 12900K Extreme Overclocked PC",
                price: 100,
                image: "pc5.jpeg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
