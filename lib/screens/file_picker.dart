import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:widgets_test_project/utils.dart';

class FilePickerExample extends StatefulWidget {
  const FilePickerExample({super.key});

  @override
  State<FilePickerExample> createState() => _FilePickerExampleState();
}

class _FilePickerExampleState extends State<FilePickerExample> {
  List<PlatformFile> _selectedFiles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FilePicker',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text(
              'Pick Files',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              _pickFiles();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo)),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: _selectedFiles.isNotEmpty
                  ? List.generate(
                      _selectedFiles.length,
                      (index) => Image.file(
                            File(_selectedFiles[index].path!),
                            width: 300,
                            height: 250,
                          ))
                  : [const SizedBox()],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ["jpg", "png"]);

    if (result != null) {
      setState(() {
        _selectedFiles = result.files;
      });
    }
  }
}
