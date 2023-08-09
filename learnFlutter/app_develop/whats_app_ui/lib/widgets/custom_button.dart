import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff115E58),
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.link,
              color: Colors.white,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "Create call link",
            style: TextStyle(
                fontFamily: "ComicNeue-Italic",
                fontSize: 17,
                color: Colors.white60),
          ),
        ),
        subtitle: const Text(
          "Share a link for your WhatsApp call",
          style: TextStyle(color: Colors.white24),
        ),
      ),
    );
  }
}
