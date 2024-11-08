import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'soshelp.dart';
import 'map.dart';
import 'UserReview.dart';
import 'aboutus.dart';
import 'soshelpPolice.dart';
import 'soshelpAmbulance.dart';
import 'soshelpFire.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homepage Design',
      home: const HomeScreen(),
      routes: {
        '/police': (context) => const SosHelpPolice(),
        '/ambulance': (context) => const SosHelpAmbulance(),
        '/fire': (context) => const SosHelpFire(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Welcome to Dispent',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {
              print('Facebook will be opened');
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icons/Untitled design.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: GridView(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              children: [
                buildGradientContainer(
                    context, "Map", () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen()));
                    }),
                buildGradientContainer(
                    context, "Sos Help", () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SosHelpScreen()));
                    }),
                buildGradientContainer(
                    context, "UserReview", () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserReview()));
                    }),
                buildGradientContainer(context, "About Devoloper", () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGradientContainer(
    BuildContext context, 
    String label,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6849B7),
              Color(0xFFA28ED7),
              Color(0xFFB9A8E3),
            ],
            stops: [0, 0.72, 1],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}