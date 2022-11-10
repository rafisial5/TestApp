import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/page_two_controller.dart';

class SecondScreen extends GetView<SecondScreenController> {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.yellow.shade800),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Select any 5 of your favourite topics',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    customBox('Sports', 'assets/icons/football.png',
                        controller.sportSelected),
                    customBox('Music', 'assets/icons/guitar.png',
                        controller.musicSelected),
                    customBox('Food', 'assets/icons/pizza.png',
                        controller.foodSelected),
                    customBox('Science', 'assets/icons/science.png',
                        controller.scienceSelected),
                    customBox('Sports', 'assets/icons/football.png',
                        controller.sportTwoSelected),
                    customBox('Sports', 'assets/icons/football.png',
                        controller.sportThreeSelected),
                    customBox('Sports', 'assets/icons/football.png',
                        controller.sportFourSelected),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    customBox('Animal', 'assets/icons/lion.png',
                        controller.animalSelected),
                    customBox('Education', 'assets/icons/books.png',
                        controller.educationSelected),
                    customBox('Art', 'assets/icons/crayons.png',
                        controller.artSelected),
                    customBox('Nature', 'assets/icons/tree.png',
                        controller.natureSelected),
                    customBox('Game', 'assets/icons/game.png',
                        controller.gameSelected),
                    customBox('Animal', 'assets/icons/lion.png',
                        controller.animalTwoSelected),
                    customBox('Animal', 'assets/icons/lion.png',
                        controller.animalThreeSelected),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.yellow.shade800,
                  minimumSize: const Size(500, 50)),
              onPressed: () {},
              child: const Text('Done'),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget customBox(String title, String showIcon, RxBool check) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          check.value = check.toggle().value;
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          width: Get.width / 2 - 35,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:
                check.value ? const Color(0xFF22BEE0) : const Color(0xFFD7E9ED),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(showIcon),
              const SizedBox(
                width: 2,
              ),
              Text(
                title,
                style: TextStyle(
                  color: check.value ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
