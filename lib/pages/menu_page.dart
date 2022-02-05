import 'package:flutter/material.dart';
import 'package:triptonic/models/car_models.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 16, right: 16),
        children: [
          Center(
            child: Row(
              children: [Text('Bodykit')],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextField(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(21),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'asset/images/Promo Banner.png',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text('Jenis Mobil'),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              mainAxisExtent: 200,
            ),
            itemCount: carList.length,
            itemBuilder: (context, index) {
              var data = carList[index];
              return Container(
                child: Column(
                  children: [
                    Image.asset(data.imageAsset!),
                    Text(data.name!),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
