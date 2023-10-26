import 'package:flutter/material.dart';

class OtherFunction extends StatelessWidget {
  final color;
  final String imageIconPath;
  final String title;
  final String subtitle;
  const OtherFunction(
      {super.key,
      required this.color,
      required this.imageIconPath,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //icon
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  imageIconPath,
                  width: 40,
                  height: 40,
                ),
              ),
              const SizedBox(width: 20),
              //text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 10),
                  Text(subtitle,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                      )),
                ],
                //icon arrow right
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
