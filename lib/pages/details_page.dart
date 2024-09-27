import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? id;
  
  const DetailsPage({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details')),
      body: Center(
        child: Text('ID do item: $id')),
    );
  }
}
