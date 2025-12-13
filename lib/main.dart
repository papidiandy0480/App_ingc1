import "package:app_ingc1/pages/page_accueil.dart";
import "package:app_ingc1/pages/page_profil.dart";
import "package:app_ingc1/pages/pages/pages_param%C3%A8tres.dart";
import "package:flutter/material.dart";

void main() {
  // Point d’entrée de l’application Flutter
  // Cette instruction démarre l’application
  // en utilisant le widget MonApplication comme racine
  runApp(const MonApplication());
}

// StatelessWidget : widget dont l’interface ne change pas
class MonApplication extends StatelessWidget {
  // Le constructeur reçoit une clé optionnelle
  // super.key permet d’appeler le constructeur de la classe parente
  const MonApplication({super.key});

  @override // Méthode redéfinie depuis la classe StatelessWidget
  Widget build(BuildContext context) {
    // MaterialApp représente la structure globale de l’application
    // C’est ici qu’on configure le titre, la page d’accueil et les routes
    return MaterialApp(
      title: "Premiere Application",

      // Page affichée au démarrage de l’application
      home: const PageAccueil(),

      // Définition des différentes routes de navigation
      routes: {
        "/accueil": (context) => PageAccueil(),
        "/profil": (context) => PageProfile(),
        "/parametres": (context) => PageParametre(),
      },

      // Page affichée lorsqu’une route demandée n’existe pas
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => const PageAccueil(),
      ),
    );
  }
}

// StatefulWidget : widget dont le contenu peut évoluer dans le temps
