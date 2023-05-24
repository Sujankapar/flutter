import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({Key? key}) : super(key: key);

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(type) async{
    var image;
    if (type == "camera"){
      image = await ImagePicker().pickImage(source: ImageSource.camera,imageQuality: 10);
    }else{
      image = ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 25);
    }
    if(image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image picker"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 60,
             backgroundColor: Colors.black,
             child: Padding(
               padding: EdgeInsets.all(8),
               child: ClipOval(
                 child: selectedImage != null
                 ? Image.file(
                   selectedImage!,
                   fit: BoxFit.cover,
                   height: 100,width: 100,
                 )
                     : Image.asset('assets/Image.jpeg',
                 fit: BoxFit.cover,
                 height: 100,
                 width: 100,
                 )
               ),
               ),
             ),
            ElevatedButton(onPressed: (){
              chooseImage("camera");
            }, child: Text("Image From camera"),
            ),
            ElevatedButton(onPressed: (){
              chooseImage("Gallery");
            }, child: Text("Image From Gallery"),
            ),
          ],
        ),
      ),
    );
  }

}
