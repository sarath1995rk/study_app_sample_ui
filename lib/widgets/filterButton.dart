import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onClick;

  FilterButton(this.onClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: OutlinedButton.icon(
        onPressed: onClick,
        icon: const Icon(
          Icons.filter_alt_outlined,
          color: Colors.grey,
          size: 18,
        ),
        label: const Text('Filter',
            style: TextStyle(
                color: Colors.grey, fontSize: 11, fontFamily: 'Poppins')),
      ),
    );
  }
}
