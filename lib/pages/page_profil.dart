import 'package:flutter/material.dart';

// PageProfile est un StatelessWidget car son contenu ne change pas
class PageProfile extends StatelessWidget {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer permet d'ajouter un menu latéral qui s’ouvre depuis la droite
      endDrawer: Drawer(
        child: ListView(
          children: [
            // En-tête du menu latéral
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                // Style pour personnaliser le texte du header
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // ListTile permet d'ajouter un élément cliquable dans le menu
            ListTile(
              title: Text(
                "Accueil",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              // trailing permet d'ajouter une icône à droite du texte
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // Navigation vers la page d'accueil
                Navigator.pushNamed(context, "/accueil");
              },
            ),

            // Deuxième élément du menu : paramètres
            ListTile(
              title: Text(
                "Paramètres",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // Action lors du clic sur "Paramètres"
                // (navigation à implémenter plus tard)
                print("Aller aux paramètres");
              },
            ),
          ],
        ),
      ),

      // Barre supérieure de l'application
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Page Profil"),
        centerTitle: true,
        // Icône affichée à gauche du titre
        leading: Icon(Icons.account_circle),
      ),

      // Contenu principal de la page
      body: const Center(
        child: Column(
          // Centre verticalement les widgets
          mainAxisAlignment: MainAxisAlignment.center,
          // Centre horizontalement les widgets
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Message de bienvenue
            Text("Bienvenue sur la page profil"),
            // Description de la page
            Text("Ceci est la page de profil de l'utilisateur."),
          ],
        ),
      ),
    );
  }
}
