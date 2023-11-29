import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yy').format(now);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 75,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWE_DUe1I2dNq2hRCfDWZGsMuBseSYfRPEPw04Y6X0nY5PW_5N1QtE18c6JofioU4uUQ4&usqp=CAU',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Tanggal: $formattedDate',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
