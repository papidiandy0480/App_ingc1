import "package:app_ingc1/pages/page_accueil.dart";
import "package:app_ingc1/pages/page_profil.dart";
import "package:app_ingc1/pages/pages/pages_param%C3%A8tres.dart";
import "package:flutter/material.dart";

void main() {
  // Point d’entrée de l’application Flutter
  // runApp permet de lancer l’application en affichant le widget principal
  runApp(const MonApplication());
}

// StatelessWidget : widget dont le contenu ne change pas dans le temps
class MonApplication extends StatelessWidget {
  // super.key permet d'identifier le widget dans l’arbre des widgets
  const MonApplication({super.key});

  @override
  // Méthode héritée de StatelessWidget
  // Elle décrit l’interface graphique du widget
  Widget build(BuildContext context) {
    // MaterialApp représente la structure générale de l’application
    // C’est ici qu’on configure le thème, les routes et la page principale
    return MaterialApp(
      title: "Premiere Application",

      // Page affichée au lancement de l’application
      home: const PageAccueil(),

      // routes permet de définir les différentes pages accessibles par navigation
      routes: {
        "/accueil": (context) => PageAccueil(),
        "/profil": (context) => PageProfile(),
        "/parametres": (context) => PageParametre(),
      },

      // Page affichée lorsque la route demandée n’existe pas
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => const PageAccueil(),
      ),
    );
  }
}

// StatefulWidget : widget dont le contenu peut évoluer (non utilisé ici)
