import 'package:flutter/material.dart';
import 'car.dart';
import 'dbhelper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastros de Carros',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
    
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dbHelper = DatabaseHelper.instance;

  List<Car> cars = [];
  List<Car> carsByName = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController milesController = TextEditingController();

  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController milesUpdateController = TextEditingController();

  TextEditingController idDelecteController = TextEditingController();

  TextEditingController queryController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Cad.",
              ),
              Tab(
                text: "Visu.",
              ),
              Tab(
                text: "Cons.",
              ),
              Tab(
                text: "Atual.",
              ),
              Tab(
                text: "Delet.",
              ),
            ],
          ),
            title: const Text('Cadastros de Carros'),
        ),
      body: TabBarView(
        
      )
      )
    )
  }

}
