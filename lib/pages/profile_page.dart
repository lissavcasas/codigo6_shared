import 'package:codigo6_shared/utils/sp_global.dart';
import 'package:codigo6_shared/widgets/my_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "";
  String address = "";
  String email = "";

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    name = SPGlobal().name;
    address = SPGlobal().address;
    email = SPGlobal().email;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black54,
                      size: 14,
                    ),
                    Text(
                      "Volver",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Mi Perfil",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              MyCard(
                color: const Color(0XFFFDD7AE),
                value: name,
                label: "Nombre completo",
              ),
              const SizedBox(height: 10),
              MyCard(
                color: const Color(0XFFC5FFCD),
                value: address,
                label: "Dirección",
              ),
              const SizedBox(height: 10),
              MyCard(
                color: const Color(0XFFFEDCDD),
                value: email,
                label: "Correo electrónico",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
