import 'package:flutter/material.dart';

class DeleteProfilePage extends StatelessWidget {
  const DeleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: const Center(
        child: Text('Delete Profile Page'),
      ),
    );
  }
}
