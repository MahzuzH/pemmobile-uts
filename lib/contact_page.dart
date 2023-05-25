import 'dart:io';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_uts/sql_helper.dart';
import 'package:image_picker/image_picker.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  XFile? imgXFile;
  final ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imgXFile;
    });
  }

  List<Map<String, dynamic>> user = [];
  void refreshUsers() async {
    final data = await SQLHelper.getUser();
    setState(() {
      user = data;
      nameController.text = '';
      numberController.text = '';
    });
  }

  @override
  void initState() {
    refreshUsers();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: ((context, index) => Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    // onTap: modalForm(user[index]['id']),
                    leading: CircleAvatar(
                      backgroundImage: imgXFile == null
                          ? null
                          : FileImage(
                              File(imgXFile!.path),
                            ),
                    ),
                    title: Text(user[index]['name']),
                    subtitle: Text(
                      user[index]['number'],
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => modalForm2(user[index]['id']),
                            icon: const Icon(
                              Icons.info,
                            ),
                          ),
                          IconButton(
                            onPressed: () => modalForm(user[index]['id']),
                            icon: const Icon(
                              Icons.edit,
                            ),
                          ),
                          IconButton(
                            onPressed: () => deleteUser(user[index]['id']),
                            icon: const Icon(
                              Icons.delete,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          modalForm(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> addUser() async {
    await SQLHelper.addUser(
      nameController.text,
      numberController.text,
    );
    refreshUsers();
  }

  Future<void> editUser(int id) async {
    await SQLHelper.editUser(
      id,
      nameController.text,
      numberController.text,
    );
    refreshUsers();
  }

  Future<void> deleteUser(int id) async {
    await SQLHelper.deleteUser(id);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Berhasil hapus kontak'),
      ),
    );
    refreshUsers();
  }

  modalForm2(id) async {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    if (id != null) {
      final dataUsers = user.firstWhere((element) => element['id'] == id);
      nameController.text = dataUsers['name'];
      numberController.text = dataUsers['number'];
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Container(
        padding: mediaQueryData.viewInsets,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () async {
                      refreshUsers();
                      imgXFile = null;
                      nameController.text = '';
                      numberController.text = '';
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      getImageFromGallery();
                    },
                    child: Center(
                      child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.20,
                          backgroundColor: Colors.white,
                          backgroundImage: imgXFile == null
                              ? null
                              : FileImage(
                                  File(imgXFile!.path),
                                ),
                          child: imgXFile == null
                              ? Icon(
                                  Icons.add_photo_alternate,
                                  color: Colors.grey,
                                  size:
                                      MediaQuery.of(context).size.width * 0.20,
                                )
                              : null),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    readOnly: true,
                    autofocus: true,
                    controller: nameController,
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    readOnly: true,
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    controller: numberController,
                    decoration: const InputDecoration(hintText: 'Phone Number'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  modalForm(id) async {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    if (id != null) {
      final dataUsers = user.firstWhere((element) => element['id'] == id);
      nameController.text = dataUsers['name'];
      numberController.text = dataUsers['number'];
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Container(
        padding: mediaQueryData.viewInsets,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () async {
                      refreshUsers();
                      imgXFile = null;
                      nameController.text = '';
                      numberController.text = '';
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      getImageFromGallery();
                    },
                    child: Center(
                      child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.20,
                          backgroundColor: Colors.white,
                          backgroundImage: imgXFile == null
                              ? null
                              : FileImage(
                                  File(imgXFile!.path),
                                ),
                          child: imgXFile == null
                              ? Icon(
                                  Icons.add_photo_alternate,
                                  color: Colors.grey,
                                  size:
                                      MediaQuery.of(context).size.width * 0.20,
                                )
                              : null),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    readOnly: true,
                    autofocus: true,
                    controller: nameController,
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    controller: numberController,
                    decoration: const InputDecoration(hintText: 'Phone Number'),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await addUser();
                        } else {
                          await editUser(id);
                        }
                        nameController.text = '';
                        numberController.text = '';
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      },
                      child: Text(id == null ? 'Add Contact' : 'Edit Contact',
                          textAlign: TextAlign.center),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
