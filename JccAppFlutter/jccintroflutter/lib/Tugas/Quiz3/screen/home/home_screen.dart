import 'package:flutter/material.dart';
import 'package:jccintroflutter/Tugas/Quiz3/screen/home/model.dart';

class Homescreen extends StatefulWidget {
  final String username;
  const Homescreen({Key? key, required this.username}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  _HomescreenState();
  int harga = 0;
  get value => widget.username;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.network(
                          "https://avatars.githubusercontent.com/u/52710807?v=4",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(value.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      //## soal 4
                      //Tulis Coding disini
                      Text("Rp " + harga.toString()),

                      //sampai disini
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.add_shopping_cart)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //#soal 3 silahkan buat coding disini
              //untuk container boleh di pake/dimodifikasi
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return shop(items[index].name, items[index].price,
                        items[index].profileUrl);
                  },
                ),
              ),
              //sampai disini soal 3
            ],
          ),
        ),
      ),
    );
  }

  Widget shop(String name, int price, String profileUrl) {
    return Card(
      shadowColor: Colors.blue,
      elevation: 4,
      child: Column(
        children: [
          Image.network(profileUrl),
          const Divider(),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text("Rp " + price.toString()),
          ElevatedButton(
            onPressed: () {
              //Soal 4
              setState(() {
                harga += price;
              });
              //sampai disini soal 4
            },
            child: const Text("Beli"),
          ),
        ],
      ),
    );
  }
}
