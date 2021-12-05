import 'package:flutter/material.dart';

class ItemImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Image.network(
          'https://6.viki.io/image/b8f51cc5bb47413b9bf163bd966fd34e.jpeg?s=900x600&e=t',
          width: 100.0,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
