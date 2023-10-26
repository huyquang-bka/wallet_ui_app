import 'package:flutter/material.dart';

class FunctionButton extends StatelessWidget {
  final icon;
  final String text;

  const FunctionButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EdgeInsets paddingContainer = EdgeInsets.all(10);
    final BorderRadius borderRadiusContainer = BorderRadius.circular(15);
    final Color borderColor = Colors.grey.withOpacity(0.2);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          //Icon
          Container(
            padding: paddingContainer,
            decoration: BoxDecoration(
              borderRadius: borderRadiusContainer,
              border: Border.all(
                color: borderColor,
              ),
            ),
            child: Container(
              padding: paddingContainer,
              decoration: BoxDecoration(
                borderRadius: borderRadiusContainer,
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Container(
                padding: paddingContainer,
                decoration: BoxDecoration(
                  borderRadius: borderRadiusContainer,
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Icon(
                  icon,
                  color: Colors.deepPurple,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          //Text
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
