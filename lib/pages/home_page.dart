import 'package:codigo6_shared/utils/sp_global.dart';
import 'package:codigo6_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void save() {
    // Send to Shared Preferences
    SPGlobal().name = _nameController.text;
    SPGlobal().address = _addressController.text;
    SPGlobal().email = _emailController.text;

    // Clear controllers
    _nameController.clear();
    _addressController.clear();
    _emailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shared Preferences"),
      ),
      drawer: const MyDrawerWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nameController,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[A-Za-z0-9\\s]")),
                  ],
                  decoration: const InputDecoration(
                    hintText: "Nombre completo",
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _addressController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: "Dirección",
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Correo electrónico",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () => save(),
                  child: const Text(
                    "Guardar",
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
