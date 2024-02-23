
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
                backgroundImage: AssetImage('path/to/profile_image.png'), // Remplacer avec votre image
              ),
              SizedBox(height: 10), // Espacement
              Text(
                'Shambhavi Mishra',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Food Blogger',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              Expanded(
                child: ListView(
                  children: ListTile.divideTiles( // Ajoute des lignes de séparation
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
