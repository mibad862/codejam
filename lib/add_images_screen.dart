import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImagesScreen extends StatefulWidget {
  const AddImagesScreen({Key? key}) : super(key: key);

  static const String routeName = '/add-image';

  @override
  State<AddImagesScreen> createState() => _AddImagesScreenState();
}

class _AddImagesScreenState extends State<AddImagesScreen> {
  final List<String> imagesList = [];
  final picker = ImagePicker();
  TextEditingController textFieldController = TextEditingController();

  Future<void> getImage() async {
    final xFile = await picker.pickImage(source: ImageSource.camera);

    if (xFile != null) {
      setState(() {
        imagesList.add(xFile.path);
      });
    }
  }

  Future<void> getImageFromGallery() async {
    final xFile = await picker.pickImage(source: ImageSource.gallery);

    if (xFile != null) {
      setState(() {
        imagesList.add(xFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Images'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    getImage();
                  },
                  icon: const Icon(Icons.camera),
                  label: const Text('Capture'),
                ),
                TextButton.icon(
                  onPressed: () {
                    getImageFromGallery();
                  },
                  icon: const Icon(Icons.photo_album),
                  label: const Text('Gallery'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 60, // Set your desired height
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagesList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(
                        File(imagesList[index]),
                        width: 60, // Set your desired width
                        height: 100, // Set your desired height
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
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
            Container(

              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                      height: 50,
                      child: ElevatedButton(

                        onPressed: () {},
                        child: const Text("DELETE",style: TextStyle(fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.black),

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
                      child: ElevatedButton(

                        onPressed: () {},
                        child: const Text("SAVE",style: TextStyle(fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFF6340),
                            foregroundColor: Colors.white ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      )),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
