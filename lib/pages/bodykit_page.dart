import 'package:flutter/material.dart';
import 'package:triptonic/models/bodykits_models.dart';

class BodyKitPage extends StatelessWidget {
  const BodyKitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: 200,
          ),
          itemCount: bodyKitList.length,
          itemBuilder: (context, index) {
            var data = bodyKitList[index];
            return Container(
              child: Column(
                children: [
                  Text(data.name!),
                  Image.asset(data.imageAsset!),
                  Text(
                    data.price!.toString(),
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
