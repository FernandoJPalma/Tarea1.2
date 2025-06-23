import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to Reminders'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Reminders',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              const InfoItem(
                icon: Icons.calendar_today,
                color: Colors.green,
                title: 'Quick Creation',
                description:
                    'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
              ),
              const SizedBox(height: 20),
              const InfoItem(
                icon: Icons.shopping_cart,
                color: Colors.orange,
                title: 'Grocery Shopping',
                description:
                    'Create a Grocery List that automatically sorts items you add by category.',
              ),
              const SizedBox(height: 20),
              const InfoItem(
                icon: Icons.group,
                color: Colors.amber,
                title: 'Easy Sharing',
                description:
                    'Collaborate on a list, and even assign individual tasks.',
              ),
              const SizedBox(height: 20),
              const InfoItem(
                icon: Icons.view_list,
                color: Colors.blue,
                title: 'Powerful Organization',
                description:
                    'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
              ),
              const Spacer(),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Puedes agregar funcionalidad aquí
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  const InfoItem({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        )
      ],
    );
  }
}