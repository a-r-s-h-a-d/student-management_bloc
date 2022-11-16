import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_details/application/edit_students/edit_students_bloc.dart';
import 'package:student_details/domain/model/data_model.dart';
import 'package:student_details/presentation/view_students/screen_view_students.dart';
import 'package:student_details/presentation/widgets/input_textfield.dart';

// ignore: must_be_immutable
class EditStudent extends StatelessWidget {
  final StudentModel student;
  final dynamic studentKey;
  TextEditingController? _nameController;
  TextEditingController? _ageController;
  TextEditingController? _emailController;
  TextEditingController? _contactController;
  String? imagePath;
  final _formKey = GlobalKey<FormState>();

  EditStudent({
    Key? key,
    required this.student,
    required this.studentKey,
  }) : super(key: key);

  getTextEditingControllerValues(context) {
    _nameController = TextEditingController(text: student.name);
    _ageController = TextEditingController(text: student.age);
    _emailController = TextEditingController(text: student.email);
    _contactController = TextEditingController(text: student.contacts);
    imagePath = student.image;
  }

  Future<void> onAddStudentButtonClicked(context) async {
    final name = _nameController!.text;
    final age = _ageController!.text;
    final email = _emailController!.text;
    final contact = _contactController!.text;
    if (name.isEmpty ||
        age.isEmpty ||
        email.isEmpty ||
        contact.isEmpty ||
        imagePath == null) {
      return;
    }
    final student = StudentModel(
      name: name,
      age: age,
      email: email,
      contacts: contact,
      image: imagePath!,
    );
    BlocProvider.of<EditStudentsBloc>(context)
        .add(AddEditedContenttoDatabase(key: studentKey, student: student));
    showAddedAlertBox(context);
  }

  Future<void> pickImage({
    required ImageSource source,
    required BuildContext context,
  }) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) {
      return;
    }
    imagePath = image.path;
    BlocProvider.of<EditStudentsBloc>(context).add(
      UpdateProfile(image: imagePath!),
    );
  }

  @override
  Widget build(BuildContext context) {
    getTextEditingControllerValues(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Student"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Center(
                child: Stack(
                  children: <Widget>[
                    BlocBuilder<EditStudentsBloc, EditStudentsState>(
                      builder: (context, state) {
                        return CircleAvatar(
                          radius: 80.0,
                          backgroundImage: (state.student.image == '')
                              ? FileImage(File(imagePath!))
                              : FileImage(File(state.student.image)),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 20,
                      right: 5,
                      child: InkWell(
                        onTap: () {
                          log('pressed');
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => bottomsheet(context),
                          );

                          BlocProvider.of<EditStudentsBloc>(context).add(
                            UpdateProfile(image: imagePath!),
                          );
                        },
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              InputTextField(
                icon: Icons.person,
                keyboardType: TextInputType.name,
                labeltext: 'Full Name',
                controller: _nameController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Full Name";
                  }
                  if (!RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Please enter valid Name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              InputTextField(
                keyboardType: TextInputType.number,
                icon: Icons.calendar_month,
                labeltext: 'Age',
                controller: _ageController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the Age";
                  }
                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please enter a valid Age';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              InputTextField(
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email,
                labeltext: 'Email',
                controller: _emailController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter an email";
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              InputTextField(
                keyboardType: TextInputType.phone,
                icon: Icons.phone,
                labeltext: 'Contact Number',
                controller: _contactController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a Contact number";
                  }
                  if (value.length != 10) {
                    return 'Mobile Number must be of 10 digit';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              editStudentButton(() => getTextEditingControllerValues, context),
            ],
          ),
        ),
      ),
    );
  }

  editStudentButton(Function() getTextEditingControllerValues, context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 90),
      child: ElevatedButton.icon(
        onPressed: () {
          log('elevated button pressed');
          if (_formKey.currentState!.validate()) {
            onAddStudentButtonClicked(context);
          }
        },
        icon: const Icon(Icons.add),
        label: const Text('Edit Student'),
      ),
    );
  }

  void showAddedAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          title: Column(
            children: const [
              Text("Edit"),
              Divider(),
            ],
          ),
          content: const Text("Edited Successfully."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => ScreenViewStudents(),
                    ),
                    (route) => false);
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  Widget bottomsheet(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton.icon(
                onPressed: () async {
                  await pickImage(source: ImageSource.camera, context: context);
                  BlocProvider.of<EditStudentsBloc>(context).add(
                    UpdateProfile(image: imagePath!),
                  );
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.camera),
                label: const Text('camera'),
              ),
              TextButton.icon(
                onPressed: () async {
                  await pickImage(
                      source: ImageSource.gallery, context: context);
                  BlocProvider.of<EditStudentsBloc>(context).add(
                    UpdateProfile(image: imagePath!),
                  );
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.image),
                label: const Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
