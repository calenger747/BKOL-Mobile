// ignore_for_file: prefer_const_constructors, unused_field, unused_local_variable, unnecessary_new

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class UploadBerkas extends StatefulWidget {
  const UploadBerkas({super.key});

  @override
  State<UploadBerkas> createState() => _UploadBerkasState();
}

class _UploadBerkasState extends State<UploadBerkas> {
  FilePickerResult? _resultKTP;
  PlatformFile? _pickedKTP;
  File? _displayKTP;
  String? _fileKTP, _fileIjazah, _fileCV, _pathKTP, _pathIjazah, _pathCV;
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  Future startPickerKTP() async {
    _resultKTP = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'gif'],
    );

    if (_resultKTP != null) {
      _fileKTP = _resultKTP!.files.first.name;
      _pickedKTP = _resultKTP!.files.first;
      _displayKTP = File(_pickedKTP.toString());
    }
  }

  // getImageGallery() async {
  //   var imageFile =
  //       await ImagePicker.platform.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = imageFile;
  //   });
  // }

  Future _uploadFileKTP(File filePath) async {
    String fileName = filePath.path.split('/').last;
    // String fileName = basename(filePath.toString());
    // var length = await filePath.length();
    // print("File base name: $filePath");

    try {
      FormData formData = new FormData.fromMap({
        "job_position": "ASSS",
        "save_type": "INPUT",
        "MPCareerKey":
            "cDFhV0hRV0FNODJBczNpSWgxMm1jSlVEZzVETUppa280OUllZ0l6eEp1bz0=",
        "age": 22,
        "image_post":
            await MultipartFile.fromFile(filePath.path, filename: fileName),
      });
      Response response = await Dio().post(
          "https://career.medikaplaza.com/RESTAPI/postingJob",
          data: formData);
      print("File upload response: $response.message");
      // _showSnackBarMsg(response.data['message']);
    } catch (e) {
      print("expectation caugch: $e");
    }
  }

  // void _showSnackBarMsg(String msg) {
  //   _globalKey.currentState?.showSnackBar(new SnackBar(content: new Text(msg)));
  // }

  // startPickerIjazah() async {
  //   html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  //   uploadInput.multiple = false;
  //   uploadInput.draggable = true;
  //   uploadInput.click();

  //   uploadInput.onChange.listen((event) {
  //     final files = uploadInput.files;
  //     final file = files![0];
  //     final reader = html.FileReader();

  //     reader.onLoadEnd.listen((event) {
  //       setState(() {
  //         _bytesDataIjazah =
  //             Base64Decoder().convert(reader.result.toString().split(",").last);
  //         _selectedFileIjazah = _bytesDataIjazah;
  //       });
  //     });
  //     reader.readAsDataUrl(file);
  //   });
  // }

  // startPickerCV() async {
  //   html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  //   uploadInput.multiple = false;
  //   uploadInput.draggable = true;
  //   uploadInput.click();

  //   uploadInput.onChange.listen((event) {
  //     final files = uploadInput.files;
  //     final file = files![0];
  //     final reader = html.FileReader();

  //     reader.onLoadEnd.listen((event) {
  //       setState(() {
  //         _bytesDataCV =
  //             Base64Decoder().convert(reader.result.toString().split(",").last);
  //         _selectedFileCV = _bytesDataCV;
  //       });
  //     });
  //     reader.readAsDataUrl(file);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text(
          'Dokumen Pencaker',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Container(),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder(
                      horizontalInside:
                          BorderSide(width: 0.6, color: Colors.black38),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    columnWidths: {
                      0: FractionColumnWidth(0.40),
                      1: FractionColumnWidth(0.60),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: AutoSizeText(
                                "Images",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {
                                  startPickerKTP();
                                },
                                color: Colors.greenAccent,
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                textColor: Colors.black,
                                child: Text("Pilih Foto KTP"),
                              ),
                            ),
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: AutoSizeText(
                                "Images",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.greenAccent,
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                textColor: Colors.black,
                                child: Text("Pilih Foto Ijazah/SKL"),
                              ),
                            ),
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: AutoSizeText(
                                "Images",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.greenAccent,
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                textColor: Colors.black,
                                child: Text("Pilih Foto CV"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Builder(
                    builder: (context) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent.shade200,
                        minimumSize: const Size.fromHeight(40),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        _uploadFileKTP(_displayKTP!);
                      },
                      child: const Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
