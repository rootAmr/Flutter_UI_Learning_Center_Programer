import 'package:flutter/material.dart';

class DescribtionSection extends StatelessWidget {
  const DescribtionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                "Waktu Tempuh :",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.timer,
                color: Colors.amber,
              ),
              SizedBox(width: 8),
              Text('150 Jam'),
            ],
          ),
          Row(
            children: [
              Text('Hasil survei :'),
              Icon(Icons.star_rate, 
                color: Colors.amber),
            ],
          )
        ],
      ),
    );
  }
}
