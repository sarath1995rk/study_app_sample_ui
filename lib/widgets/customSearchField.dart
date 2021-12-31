import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
