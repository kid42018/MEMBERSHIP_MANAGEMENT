import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic({ this.image});

  ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            color: Colors.white,
            child: Center(
              child: Hero(
                  tag: "picture",
                  child: Image(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.contain,
                    image: image,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
