import 'package:flutter/material.dart';

class ESEScreen extends StatelessWidget {
  const ESEScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DateText(weekday: "Montag", date: "31. Oktober"),
          ESECard(
            title: "Begrüßung", 
            timeslot: "9:00 - 11:00 Uhr", 
            description: "Das wohl wichtigste Event der ESE. Werde in Seminargruppen aufgeteilt und lernen den Ablauf deines Studiums kennen.", 
            imageUrl: "https://images.unsplash.com/photo-1606761568499-6d2451b23c66?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
          ),
          DateText(weekday: "Dienstag", date: "01. November"),
          ESECard(
            title: "Wandern", 
            timeslot: "7:40 - 16:00 Uhr", 
            description: "Eine wundervolle Wanderung durch die Sächische Schweiz. Genieße die Natur und lernen deine Komilitonen kennen.", 
            imageUrl: "https://images.unsplash.com/photo-1513147122760-ad1d5bf68cdb?q=80&w=2060&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
          ),
          ESECard(
            title: "Schnitzeljagd", 
            timeslot: "17:30 - 21:00 Uhr", 
            description: "In Form einer Schnitzeljagd findest du hier alle wichtigen Gebäude der TU Dresden. Wo ist die Bibliothek und wo geh ich hin, wenn ich einmal einmal Probleme mit einer Prüfung habe. Verpass es also nicht!", 
            imageUrl: "https://images.unsplash.com/photo-1538255351853-9163d93265b0?q=80&w=1443&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
          ),
          const SizedBox(height: 200),
        ],
      ),
      floatingActionButton: _getFloatingActionButton(),
    );
  }

  /// Floating Action Button in ESE Screen. 
  /// Führt den Nutzer zur Nutzer Seite
  /// Hier kann er einen Account erstellen und alle wichtigen Information, die zur ESE gebraucht werden, angeben.
  FloatingActionButton _getFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {}, 
      child: const Icon(Icons.person_2_rounded)
    );
  }
}

class DateText extends StatelessWidget {
  const DateText({required this.weekday, required this.date, super.key});

  final String weekday, date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weekday,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            date,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class ESECard extends StatelessWidget {
  const ESECard({required this.title, required this.timeslot, required this.description, required this.imageUrl, super.key});

  final String title, timeslot, description, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover,)
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  timeslot,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
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
                    OutlinedButton(
                      onPressed: () {}, 
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person_add),
                          SizedBox(width: 8),
                          Text("Einschreiben")
                        ]
                      )
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}