import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.50, -0.00),
            end: Alignment(0.50, 0.39),
            colors: [Color(0xFF6595E4), Color(0xFF3B82F6)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 42,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 469,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/student.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 300,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 578,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    // Avatar circle and decorations
                    Positioned(
                      left: 39,
                      top: -30,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFCDE0FF),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 71.07,
                      top: -11,
                      child: Container(
                        width: 16.25,
                        height: 16.25,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF3B82F6),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55.51,
                      top: -3.98,
                      child: Container(
                        width: 11.84,
                        height: 11.84,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF3B82F6),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 91.04,
                      top: -3.98,
                      child: Container(
                        width: 11.84,
                        height: 11.84,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF3B82F6),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65.84,
                      top: 7.46,
                      child: Container(
                        width: 26.44,
                        height: 22.72,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF3B82F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(90),
                              topRight: Radius.circular(90),
                              bottomLeft: Radius.circular(33),
                              bottomRight: Radius.circular(33),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Form fields
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: 66,
                      child: const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: 85,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 43,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 2,
                              color: Color(0xFFECEDF1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'studentemail@mail.com',
                              hintStyle: TextStyle(
                                color: Color(0xFFB3B0B0),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w500,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: 146,
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: 165,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 43,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 2,
                              color: Color(0xFFECEDF1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Sign In Button
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: 236,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF3B82F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Forgot Password
                    const Positioned(
                      left: 0,
                      right: 0,
                      top: 297,
                      child: Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF3B82F6),
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    // Sign Up Text
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 422,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Color(0xFF0F172A),
                              fontSize: 15,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xFF3B82F6),
                              fontSize: 15,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}