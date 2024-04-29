import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/features/choose_date/choose_date.dart';

enum SelectedButton { First, Second, None }

class ChooseNurseGender extends StatefulWidget {
  const ChooseNurseGender({super.key});

  @override
  State<ChooseNurseGender> createState() => _ChooseNurseGenderState();
}

class _ChooseNurseGenderState extends State<ChooseNurseGender> {
  SelectedButton _selectedButton = SelectedButton.None;
  int num = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // const SizedBox(
                      //   width: 5,
                      // ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        "Welcome to Nurse Care",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/icons/NurseCare-removebg-preview 1.png",
                    width: 40.w,
                    height: 40.h,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/Rectangle 18.png",
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = SelectedButton.First;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (_selectedButton == SelectedButton.First) {
                          return Colors.blue;
                        }
                        return Colors.transparent;
                      }),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Rectangle 16.png",
                          width: 30,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Male",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButton = SelectedButton.Second;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (_selectedButton == SelectedButton.Second) {
                          return Colors.blue; // Highlighted color
                        }
                        return Colors.transparent;
                      }),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image/Rectangle 17.png",
                          width: 30,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Female",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 196, 211),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(80))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                num++; // Incrementing the value
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.white.withOpacity(.2))),
                            child: const Text("+1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "EGP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              num.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                num--; // Incrementing the value
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.white.withOpacity(.2))),
                            child: const Text("-1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChooseDate();
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(141, 8, 68, 133)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          minimumSize: const MaterialStatePropertyAll(
                            Size(
                              double.infinity,
                              50,
                            ),
                          ),
                        ),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 8, 68, 133)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          minimumSize: const MaterialStatePropertyAll(
                              Size(double.infinity, 50))),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
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
