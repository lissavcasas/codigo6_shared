import 'package:codigo6_shared/pages/profile_page.dart';
import 'package:codigo6_shared/utils/sp_global.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/11592804/pexels-photo-11592804.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 36,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  SPGlobal().name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  SPGlobal().email,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            leading: const Icon(
              Icons.person,
            ),
            title: const Text(
              "Mi perfil",
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              "Configuración",
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.price_change,
            ),
            title: Text(
              "Mis ventas",
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.pie_chart,
            ),
            title: Text(
              "Reportes",
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.exit_to_app,
            ),
            title: Text(
              "Cerrar Sesión",
            ),
          ),
        ],
      ),
    );
  }
}
