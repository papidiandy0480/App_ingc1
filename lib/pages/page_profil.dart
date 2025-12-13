import 'package:flutter/material.dart';

// PageProfile est un écran statique qui ne change pas d’état
class PageProfile extends StatelessWidget {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer permet d’ajouter un menu latéral qui s’ouvre depuis la droite
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
                // Style appliqué au texte du header
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // ListTile représente un élément cliquable du menu
            ListTile(
              title: const Text(
                "Accueil",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              // Icône affichée à droite de l’élément
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Redirection vers la page d’accueil
                Navigator.pushNamed(context, "/accueil");
              },
            ),

            // Deuxième élément du menu : paramètres
            ListTile(
              title: const Text(
                "Paramètres",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              // Icône indiquant une navigation possible
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Action à effectuer lors du clic sur Paramètres
                print("aller aux parametres");
              },
            ),
          ],
        ),
      ),

      // Barre supérieure de l’écran
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Page Profil"),
        centerTitle: true,
        // Icône affichée à gauche du titre
        leading: const Icon(Icons.account_circle),
      ),

      // Contenu principal de la page
      body: const Center(
        child: Column(
          // Alignement vertical des éléments
          mainAxisAlignment: MainAxisAlignment.center,
          // Alignement horizontal des éléments
          crossAxisAlignment: CrossAxisAlignment.center,
          // La colonne prend uniquement l’espace nécessaire
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Bienvenue sur la page profil"),
            Text(
              "Ceci est la page de profil de l'utilisateur.",
            ),
          ],
        ),
      ),
    );
  }
}
