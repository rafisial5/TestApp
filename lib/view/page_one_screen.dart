import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/page_one_controller.dart';

class SignupScreen extends GetView<SignupScreenController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Create Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/image.png"),
                    ),
                    Positioned(
                        right: -10,
                        bottom: 0,
                        child: SizedBox(
                            height: 45,
                            width: 45,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor: Colors.yellow.shade800,
                              padding: const EdgeInsets.all(10.0),
                              shape: const CircleBorder(),
                              child: const Center(
                                child: Icon(Icons.add_a_photo_outlined,
                                    color: Colors.white),
                              ),
                            )))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                textField('First Name', false),
                const SizedBox(
                  height: 12,
                ),
                textField('Last Name', false),
                const SizedBox(
                  height: 12,
                ),
                textField('Email', false),
                const SizedBox(
                  height: 12,
                ),
                textField('Cell Number', true),
                const SizedBox(
                  height: 12,
                ),
                textField('Date', true),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.yellow.shade800,
                  minimumSize: const Size(500, 50)),
              onPressed: () {
                controller.moveToNextScreen();
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(String hint, bool number) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFD7E9ED),
      ),
      child: TextField(
          keyboardType: number ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration.collapsed(hintText: hint)),
    );
  }
}
