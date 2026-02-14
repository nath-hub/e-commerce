import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/account/view/editprofile.dart';
import 'package:alarme_me/app/module/account/view/notification.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: TextComponent(
            txt: "Log Out",
            fw: FontWeight.bold,
            txtSize: 22,
            textAlign: TextAlign.center,
          ),
          content: TextComponent(
            txt: "Are you sure you want to log out ?",
            txtSize: 18,
            textAlign: TextAlign.center,
          ),
          actions: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context), // Ferme la modale
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  TextButton(
                    onPressed: () => {
                      print("Utilisateur déconnecté"),
                      Navigator.pop(context),
                    }, // Ferme la modale
                    child: const Text(
                      "Yes, Log Out",
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),

            // Bouton ANNULER
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponent(txt: "Account", fw: FontWeight.bold),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Editprofile()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: greyColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: TextComponent(txt: "Edite profile", txtSize: 18),
                leading: Icon(Icons.person),
              ),
            ),
          ),

          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
            title: TextComponent(txt: "Notification", txtSize: 18),
            leading: Icon(Icons.notifications),
          ),

          ListTile(
            title: TextComponent(txt: "Order TRacking Sources", txtSize: 18),
            leading: Icon(Icons.track_changes),
          ),

          ListTile(
            title: TextComponent(txt: "language", txtSize: 18),
            leading: Icon(Icons.language),
          ),

          ListTile(
            title: TextComponent(txt: "Currency", txtSize: 18),
            leading: Icon(Icons.monetization_on),
            trailing: TextComponent(txt: "BD TK", color: Colors.grey),
          ),

          ListTile(
            title: TextComponent(txt: "Settings", txtSize: 18),
            leading: Icon(Icons.settings),
          ),

          ListTile(
            title: TextComponent(txt: "Help Center", txtSize: 18),
            leading: Icon(Icons.help),
          ),

          ListTile(
            title: TextComponent(txt: "Privacy Policy", txtSize: 18),
            leading: Icon(Icons.privacy_tip),
          ),

          ListTile(
            onTap: () => _showLogoutDialog(context),
            title: TextComponent(txt: "Logout", txtSize: 18),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
