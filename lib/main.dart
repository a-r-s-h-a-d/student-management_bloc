import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/application/add_students/addstudents_bloc.dart';
import 'package:student_details/application/edit_students/edit_students_bloc.dart';
import 'package:student_details/application/search_students.dart/searchstudent_bloc.dart';
import 'package:student_details/domain/model/data_model.dart';
import 'package:student_details/presentation/view_students/screen_view_students.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //register Adapter
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  // //open box
  await Hive.openBox<StudentModel>('student_db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddstudentsBloc()),
        BlocProvider(create: (context) => EditStudentsBloc()),
        BlocProvider(create: (context) => SearchstudentBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ScreenViewStudents(),
      ),
    );
  }
}
