import 'package:flutter/mAteriAl.dArt';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(
              width: 240,
            ),
            Icon(
              Icons.content_copy,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.favorite,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.inbox,
              size: 28,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20.0),
              child: Text(
                'Product Management',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70.0, left: 20, right: 20),
              child: SizedBox(
                height: double.infinity,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  maxLines: 60,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 35,
              child: Container(
                height: 57,
                width: 380,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.format_bold,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_italic,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_underlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.text_fields,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_align_justify,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_align_left,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_align_center,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.format_align_right,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
