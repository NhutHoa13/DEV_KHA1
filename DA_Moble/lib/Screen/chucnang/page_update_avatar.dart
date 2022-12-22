// import 'dart:ffi';
// import 'dart:html';
// import 'dart:io';
// import 'package:flutter_application_1/Screen/Doianh.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';

// class PageUpdateAvatar extends StatefulWidget {
//   const PageUpdateAvatar({super.key});

//   @override
//   State<PageUpdateAvatar> createState() => _PageUpdateAvatarState();
// }

// class _PageUpdateAvatarState extends State<PageUpdateAvatar> {
//   late Future<XFile?> file;
//   late final XFile? tmpFile;
//   final ImagePicker _picker = ImagePicker();
//   late Widget final_image;

//   get http => null;
//   void chooseImage() {
//     setState(() {
//       file = _picker.pickImage(
//           source: ImageSource.gallery,
//           maxHeight: 100,
//           maxWidth: 100,
//           imageQuality: 50);
//     });
//   }

//   Widget showImage() {
//     return FutureBuilder<XFile?>(
//       future: file,
//       builder: (BuildContext context, AsyncSnapshot<XFile?> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done &&
//             null != snapshot.data) {
//           tmpFile = snapshot.data;
//           final_image = Column(
//             children: [
//               Image.file(File(tmpFile!.path)),
//               TextButton.icon(
//                 onPressed: () {
//                   start_upload();
//                 },
//                 icon: Icon(Icons.save),
//                 label: Text("Save"),
//               )
//             ],
//           );
//           return final_image;
//         } else
//           return Text("No image");
//       },
//     );
//   }

//   @override
//   void initState() {
//     chooseImage();
//     super.initState();
//   }

//   void start_upload() {
//     if (tmpFile != null) {
//       String filename = tmpFile!.path.split('/').last;
//     }
//   }

//   Future<void> upload(String filename) async {
//     var request = http.MultipartRequest('POST', DoianhScreen());
//     Map<String, String> headers = {
//       "name": "DA_Moble",
//       "cwd": "DA_Moble",
//       "request": "launch",
//       "type": "dart",
//     };
//     request.headers.addAll(headers);
//     final imageBytes = await tmpFile?.readAsBytes();
//     final compressImageBytes =
//         await FlutterImageCompress.compressWithList(imageBytes);
//     request.files.add(http.MultipartFile.fromBytes(
//         'file', compressedImageCompress,
//         filename: filename));
//     var response = await request.send();
//     print(response.statusCode);
//     final res = await http.Response.fromStream(response);
//     print(res.body);
//     // var data = json.decode(res.body);
//     if (response.statusCode == 200) {
//       DoianhScreen.getProfile(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Thay đổi avatar")),
//       body: Container(
//         child: Column(
//           children: [
//             TextButton.icon(
//               onPressed: chooseImage,
//               icon: Icon(Icons.camera_enhance_rounded),
//               label: Text("choose image"),
//             ),
//             showImage(),
//           ],
//         ),
//       ),
//     );
//   }
// }
