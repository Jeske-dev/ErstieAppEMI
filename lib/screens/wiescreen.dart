import 'package:flutter/material.dart';

class WieScreen extends StatelessWidget {
  const WieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network("https://cdn.pixabay.com/photo/2021/05/23/12/50/boy-6276122_1280.png", height: 200),
            Text(
              "Wie geht Studieren eigentlich?",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24),
            Text(
              "Studiengangsauswahl und Zulassungsvoraussetzungen",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Um ein Informatik-Bachelorstudium in Deutschland aufzunehmen, müssen zunächst die Zulassungsvoraussetzungen erfüllt werden. Dies umfasst in der Regel ein erfolgreich abgeschlossenes Abitur oder ein gleichwertiger Abschluss. Interessierte sollten sich frühzeitig über die spezifischen Anforderungen der jeweiligen Universität informieren. Die Studiengangsauswahl ist vielfältig, wobei Informatik zu den beliebtesten Fächern gehört.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {}, 
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.link_rounded),
                  SizedBox(width: 8),
                  Text("Einschreiben")
                ]
              )
            ),
            const SizedBox(height: 24),
            Text(
              "Einschreibung und Immatrikulation",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Nach erfolgreicher Bewerbung erfolgt die Einschreibung an der ausgewählten Universität. Hierbei müssen alle erforderlichen Unterlagen eingereicht werden, darunter Zeugnisse, Nachweise über Sprachkenntnisse und ggf. Motivationsschreiben. Die Immatrikulation ermöglicht den offiziellen Start des Studiums.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              "Studienverlauf und Modulwahl",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Der Bachelorstudiengang in Informatik erstreckt sich in der Regel über sechs Semester. Der Studienverlauf ist modular aufgebaut, wobei verschiedene Module spezifische Themen abdecken. Studierende haben die Möglichkeit, ihre Schwerpunkte durch die Auswahl bestimmter Module zu setzen, sei es in Softwareentwicklung, Datenbanken oder Algorithmen.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Image.network("https://3.bp.blogspot.com/-g2IV3cr-tpY/WzyGabIHONI/AAAAAAAAAZo/AMOxHbFUm8MXTdjQlKeIzEhJFdwEZIF4QCEwYBhgL/s1600/Unbenannt.PNG", height: 200),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_forward_rounded, color: Colors.grey),
                  SizedBox(width: 8),
                  Text("Mehr erfahren", style: TextStyle(color: Colors.grey))
                ]
              )
            ),
            const SizedBox(height: 24),
            Text(
              "Praktika und Berufsvorbereitung",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Im Verlauf des Studiums sind Praktika oft obligatorisch, um praktische Erfahrungen zu sammeln. Diese können den Übergang in die Berufswelt erleichtern. Die Universitäten unterstützen Studierende oft bei der Vermittlung von Praktikumsplätzen und bieten Karriereberatung an.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Card(
              borderOnForeground: true,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.lightbulb_outline_rounded, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 8),
                    Text(
                      "Praktikas geben dir Praxis im Studium!",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      )
    );
  }
}