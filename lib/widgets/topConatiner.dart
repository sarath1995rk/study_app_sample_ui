import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.red[300],
      height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Trainings',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Nunito_sans'),
              ),
              const Icon(
                Icons.menu,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Highlights',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
