import 'package:codejam_competition/add_images_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text('Drag photos to reorder.'),
                      TextButton(
                        onPressed: () {},
                        child: Text('Tap to edit.'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Appendix 1: Repair source of ingress'),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              // prefixIcon: Text('Appendix 1: '),
                              prefixStyle: TextStyle(color: Colors.black),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    child: Icon(Icons.clear, size: 22),
                                  ),
                                  SizedBox(width: 8),
                                  GestureDetector(
                                    child: Icon(Icons.check, size: 22),
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 240,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 15,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("CONTINUE",style: TextStyle(fontSize: 16),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffFF6340),
                                foregroundColor: Colors.white ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 50,
                          child: FloatingActionButton(
                            elevation: 0.0,
                            backgroundColor: const Color(0xffFF6340),
                            foregroundColor: Colors.white ,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.pushNamed(context, AddImagesScreen.routeName);
                            },
                            child: const Icon(Icons.add, size: 16,),
                          ),
                        ))
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
