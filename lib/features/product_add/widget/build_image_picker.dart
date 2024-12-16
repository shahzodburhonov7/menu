import 'package:flutter/material.dart';

class BuildImagePickerOptions extends StatelessWidget {
  const BuildImagePickerOptions({
    super.key,
    required this.onPressed,
    required this.onTap,
  });

  final Function() onPressed;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Image",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: onPressed,
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              ElevatedButton.icon(
                onPressed: onTap,
                icon: Icon(Icons.photo),
                label: Text("Gallery"),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
