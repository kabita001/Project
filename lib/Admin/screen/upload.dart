import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ImageUpload extends StatefulWidget {
  const ImageUpload({ Key? key }) : super(key: key);

  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {

  File? _image;
  final imagePicker = ImagePicker(); 
  String? downloadURL;

  //image picker
  Future imagePickerMethod() async {
    final pick = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if(pick !=null)
      {
        _image = File(pick.path);
      }
      else{
        showSnackBar("No File Selected", const Duration(milliseconds: 400));
      }
    });
  }



  Future uploadImage() async{
    Reference ref = FirebaseStorage.instance.ref().child("images");
    await ref.putFile(_image!);
    downloadURL = await ref.getDownloadURL();
    (downloadURL);
  }

  // snackbar for showing error
  showSnackBar(String snackText, Duration d){
    final snackBar = SnackBar(content: Text(snackText), duration: d);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  const Text("Upload Image"),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 4, 
                    child: Container(
                      width: 300, 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), 
                        border: Border.all(color: Colors.redAccent),),

                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _image == null
                              ? const Center(child: Text("No image selected"))
                              :Image.file(_image!),
                            ),
                            ElevatedButton(onPressed: (){
                              imagePickerMethod();
                            }, child: const Text("Select image"),),
                            ElevatedButton(onPressed: (){
                              uploadImage();
                            }, child: const Text("Upload image"),)
                          ],
                        ),
                      )
                    )   
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}