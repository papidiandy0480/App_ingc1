import 'package:flutter/material.dart';

// PageAccueil représente l'écran principal de l'application
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold : structure de base d'une page Flutter
    return Scaffold(
      // AppBar : barre de navigation en haut
      appBar: AppBar(
        backgroundColor: Colors.green, // Couleur de fond de la barre
        foregroundColor: Colors.white, // Couleur du texte et des icônes
        title: const Text("App INGC1 ESMT"), // Titre au centre
        centerTitle: true,

        // Zone "leading" : à gauche de la barre
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: "Aller au profil",
          onPressed: () {
            // Navigation vers la page de profil
            Navigator.pushNamed(context, "/profil");
          },
        ),

        // Zone "actions" : widgets affichés à droite
        actions: [
          IconButton(
            onPressed: () {
              // Action pour la page de paramètres / recherche
              print("Page de recherche ici");
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              // Action pour notifications (vide pour l'instant)
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),

      // Contenu principal de la page
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrage vertical
          crossAxisAlignment: CrossAxisAlignment.center, // Centrage horizontal
          mainAxisSize: MainAxisSize.min, // Colonne prend le minimum d'espace
          children: [
            Text("Bienvenue dans l'application INGC1"),
            Text("Ceci est la page d'accueil de l'application."),
          ],
        ),
      ),
    );
  }
}
