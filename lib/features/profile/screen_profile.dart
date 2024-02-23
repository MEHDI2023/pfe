
import 'package:flutter/material.dart';
import 'package:newburger/features/profile/ui/profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100, // Couleur de fond de l'écran
      
      body: SafeArea(
        child: Container(
           decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(1.27, 1.54),
                  end: const Alignment(0, 0),
                  colors: [
                Colors.green.shade200,
                const Color.fromARGB(255, 51, 51, 51)
              ])),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20), // Espacement
              CircleAvatar(
                radius: 50, // Taille de l'image de profil
                backgroundImage: AssetImage('assets/images/img_3d_food_icon_by_108x108.png'), // Remplacer avec votre image
              ),
              SizedBox(height: 10), // Espacement
              Text(
                'ELGAIED MEHDI',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Expanded(
                child: ListView(
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        leading: Icon(Icons.edit, color: Colors.teal),
                        title: Text('Edit Profile'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ProfilScreen(),));
                          // Action quand on appuie sur "Edit Profile"
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.refresh, color: Colors.teal),
                        title: Text('Renew Plans'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Action quand on appuie sur "Renew Plans"
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings, color: Colors.teal),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Action quand on appuie sur "Settings"
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.logout, color: Colors.teal),
                        title: Text('Log Out'),
                        onTap: () {
                          // Action quand on appuie sur "Log Out"
                        },
                      ),
                    ],
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
