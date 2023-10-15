import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(10), 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), 
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          Icon(
            Icons.play_arrow, 
            color: Colors.white, 
          ),
          SizedBox(width: 8), 
          Text(
            "Dasar Pemrograman",
            style: TextStyle(
              color: Colors.white, 
              fontSize: 18, 
              fontWeight: FontWeight.w600, 
            ),
          ),
        ],
      ),
    );
  }
}
