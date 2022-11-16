import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_details/application/add_students/addstudents_bloc.dart';
import 'package:student_details/domain/model/data_model.dart';
import 'package:student_details/presentation/widgets/input_textfield.dart';
import 'package:student_details/presentation/view_students/screen_view_students.dart';

class ScreenAddStudents extends StatefulWidget {
  const ScreenAddStudents({Key? key}) : super(key: key);

  @override
  State<ScreenAddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<ScreenAddStudents> {
  final _formKey = GlobalKey<FormState>();

  String? image;

  Future<void> pickImage({required ImageSource source}) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage == null) {
      return;
    }
    image = pickedImage.path;
    BlocProvider.of<AddstudentsBloc>(context).add(changeProfile(image: image!));
  }

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Students',
          style: TextStyle(fontFamily: 'acme'),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          child: ListView(children: <Widget>[
            imageProfile(context),
            SizedBox(height: height * 0.03),
            InputTextField(
              icon: Icons.person,
              keyboardType: TextInputType.name,
              labeltext: 'Full Name',
              controller: _nameController,
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
            SizedBox(height: height * 0.01),
            const SizedBox(height: 20),
            InputTextField(
              icon: Icons.calendar_month,
              keyboardType: TextInputType.number,
              controller: _ageController,
              labeltext: 'Age',
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
            SizedBox(height: height * 0.01),
            const SizedBox(height: 20),
            InputTextField(
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              labeltext: 'Email',
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
            SizedBox(height: height * 0.01),
            const SizedBox(height: 20),
            InputTextField(
              icon: Icons.phone_rounded,
              keyboardType: TextInputType.phone,
              controller: _contactController,
              labeltext: 'Contact Number',
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
            SizedBox(height: height * 0.01),
            const SizedBox(height: 20),
            addStudentButton(onAddStudentButtonClicked),
          ]),
        ),
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    final email = _emailController.text.trim();
    final contact = _contactController.text.trim();
    if (name.isEmpty || age.isEmpty || email.isEmpty || contact.isEmpty) {
      return;
    }
    final student = StudentModel(
        name: name, age: age, email: email, contacts: contact, image: image!);
    BlocProvider.of<AddstudentsBloc>(context)
        .add(AddStudentstoDataBase(student: student));
    showAddedAlertBox(context);
  }

  Widget addStudentButton(Function() onAddStudentButtonClicked) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 90),
      child: ElevatedButton.icon(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            onAddStudentButtonClicked();
          }
        },
        icon: const Icon(Icons.add),
        label: const Text(
          'Add Student',
          style: TextStyle(fontFamily: 'acme'),
        ),
      ),
    );
  }

  Widget imageProfile(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Stack(
        children: <Widget>[
          BlocBuilder<AddstudentsBloc, AddstudentsState>(
            builder: (context, state) {
              return CircleAvatar(
                radius: height * 0.1,
                backgroundImage: (image != null)
                    ? FileImage(File(image!))
                    : const AssetImage('assets/images/profile.jpg')
                        as ImageProvider,
              );
            },
          ),
          Positioned(
            top: height * 0.095,
            left: height * 0.167,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: (ctx) => bottomsheet(ctx));
              },
              child: const Icon(
                Icons.camera_alt,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

//Bottom sheet for Selecting Image
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
              fontFamily: 'acme',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  pickImage(source: ImageSource.camera);
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.camera),
                label: const Text(
                  'camera',
                  style: TextStyle(fontFamily: 'acme'),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  pickImage(source: ImageSource.gallery);
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.image),
                label: const Text(
                  'Gallery',
                  style: TextStyle(fontFamily: 'acme'),
                ),
              ),
            ],
          ),
        ],
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
                Text("Student Added"),
                Divider(),
              ],
            ),
            content: const Text("Student added successfully to the database"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      ctx,
                      MaterialPageRoute(
                          builder: (context) => ScreenViewStudents()),
                      (route) => false);
                  // Navigator.pop(ctx);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }
}
