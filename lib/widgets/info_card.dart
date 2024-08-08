// ignore_for_file: prefer_const_constructors
// templet to fill info

import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title; // such as 'Phone' 
  final String description; // such as phone number
  final IconData icon; 

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Icon(
            icon,
            size: 20,
            color: Colors.blueGrey,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
