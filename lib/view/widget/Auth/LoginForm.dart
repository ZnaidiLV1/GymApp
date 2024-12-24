import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipPath(
              clipper: CustomCutClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset("images/gymLogin3.jpg", fit: BoxFit.cover),
              ),
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black
                        .withOpacity(0.9), // Darker shadow with higher opacity
                    offset: Offset(3.0, 3.0), // Shadow offset
                    blurRadius: 12.0, // Larger blur radius for a softer shadow
                  ),
                ],
              ),
            )
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.5,
      size.width,
      size.height * 0.6,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
