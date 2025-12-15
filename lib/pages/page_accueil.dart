import 'package:flutter/material.dart';

// PageAccueil est un StatelessWidget car son contenu ne change pas
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold représente la structure de base de chaque écran
    // Il contient l'AppBar, le body, le drawer, etc.
    return Scaffold(
      // AppBar : barre de navigation située en haut de l'écran
      appBar: AppBar(
        // backgroundColor permet de définir la couleur de fond de l'AppBar
        backgroundColor: Colors.green,

        // foregroundColor définit la couleur du texte et des icônes
        foregroundColor: Colors.white,

        // Titre affiché au centre de la barre de navigation
        title: const Text("App INGC1 ESMT"),
        centerTitle: true,

        // leading : élément situé en haut à gauche de l'AppBar
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: "Aller au profil",
          onPressed: () {
            // Navigation vers la page de profil
            // pushNamed empile la nouvelle page dans la pile de navigation
            Navigator.pushNamed(context, "/profil");
          },
        ),

        // actions : éléments situés en haut à droite de l'AppBar
        actions: [
          IconButton(
            onPressed: () {
              // Action à exécuter lors du clic sur l’icône des paramètres
              print("Page de recherche ici");
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              // Action prévue pour les notifications (à implémenter)
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      // body : contenu principal de la page
      body: const Center(
        // Center permet de centrer son enfant à l’écran
        child: Column(
          // mainAxisAlignment centre verticalement les widgets
          mainAxisAlignment: MainAxisAlignment.center,

          // crossAxisAlignment centre horizontalement les widgets
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisSize.min permet à la colonne de prendre le minimum d’espace
          mainAxisSize: MainAxisSize.min,

          // children permet d’ajouter plusieurs widgets dans la colonne
          children: [
            Text("Bienvenue dans l'application INGC1"),
            Text("Ceci est la page d'accueil de l'application."),
          ],
        ),
      ),
    );
  }
}
