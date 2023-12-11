import 'package:flutter/material.dart';

class ToDosScreen extends StatelessWidget {
  const ToDosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ToDoCard(
            title: "Bafög",
            deadline: "12. September",
            description: "Das Bundesausbildungsförderungsgesetz (BAföG) ist eine finanzielle Unterstützung vom Staat für junge Menschen, die eine Ausbildung oder ein Studium absolvieren, und ermöglicht ihnen, unabhängig von den finanziellen Möglichkeiten der Eltern, Bildungschancen zu nutzen.",
          ),
          const ToDoCard(
            title: "Laptop oder Tablet kaufen",
            deadline: "31. Oktober",
            description: "An der Uni arbeiten die meisten Studenten mit Laptop oder Tablet. Fang also rechzeitig an zu suchen, fall du noch keins besitzt.",
          ),
          const ToDoCard(
            title: "TUD folgen",
            deadline: "24. Dezember",
            description: "Folge der TU Dresden auf Instagramm um nichts wichtiges mehr zu verpassen",
          ),
          _getErledigtHeading(context),
          const ToDoCard(
            title: "Einschreiben",
            deadline: "31. Oktober",
            description: "Schreib dich auf der Homepage der TU Dresden für einen Studiengang deiner Wahl ein. Mehr Informationen dazu findest du auch auf der 'Wie?' Seite.",
            checked: true,
          ),
        ],
      ),
    );
  }

  Padding _getErledigtHeading(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Erledigt",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(width: 8),
              const Icon(Icons.check_rounded),
            ],
          ),
        );
  }
}

class ToDoCard extends StatelessWidget {
  const ToDoCard({
    required this.title,
    required this.deadline,
    required this.description,
    this.checked=false,
    super.key,
  });

  final String title, deadline, description;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  deadline,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.info_outlined, color: Colors.grey),
                      SizedBox(width: 8),
                      Text("Informationen", style: TextStyle(color: Colors.grey))
                    ]
                  )
                ),
                (checked)
                 ? FilledButton(
                  onPressed: () {}, 
                  child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_rounded),
                        SizedBox(width: 8),
                        Text("Checked")
                      ]
                    )
                )
                : OutlinedButton(
                    onPressed: () {}, 
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_rounded),
                        SizedBox(width: 8),
                        Text("Check")
                      ]
                    )
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}