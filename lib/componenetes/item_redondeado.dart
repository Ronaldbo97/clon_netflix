import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(color: Colors.yellow.shade600)),
            child: ClipOval(
              child: Image.network(
                'https://i2.wp.com/hipertextual.com/wp-content/uploads/2021/11/la-casa-de-papel-final.jpeg?fit=1200%2C675&ssl=1',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset(
            'assets/img/casapapel3.png',
            width: 100.0,
          )
        ]),
        SizedBox(width: 13.0,)
      ],

    );
  }
}
