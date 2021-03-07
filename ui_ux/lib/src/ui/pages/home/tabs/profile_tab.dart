import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://image.freepik.com/foto-gratis/tacos-mexicanos-carne-res-salsa-tomate-salsa_2829-14149.jpg",
            ),
          )
        ],
      ),
    );
  }
}
