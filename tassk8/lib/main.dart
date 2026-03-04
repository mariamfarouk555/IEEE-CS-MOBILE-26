import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [


          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [

                  Image.network(
                    "https://i.pinimg.com/736x/72/d9/af/72d9af964d384fc2a16fd087c1062a7c.jpg",
                    fit: BoxFit.cover,
                  ),

                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 10),

                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Homemade Ramen",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.orange, size: 20),
                          SizedBox(width: 4),
                          Text("4.5"),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "By June Xie",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      _infoCard(Icons.access_time, "3h 30min"),
                      _infoCard(Icons.people, "Serves 4"),
                      _infoCard(Icons.local_fire_department,
                          "Intermediate"),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text("8 Cups - Low sodium chicken broth"),
                  const SizedBox(height: 8),
                  const Text("16 g - Dried Shiitake mushrooms"),
                  const SizedBox(height: 8),
                  const Text("30 g - Kombu"),
                  const SizedBox(height: 8),
                  const Text("20 g - Dried Bonito flakes"),
                  const SizedBox(height: 20),

                  const Text(
                    "For Tare and Chashu",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text("1/4 Cup - Soy sauce"),
                  const SizedBox(height: 8),
                  const Text("1/4 Cup - Mirin"),
                  const SizedBox(height: 8),
                  const Text("1/2 Cup - Sake"),
                  const SizedBox(height: 8),
                  const Text("1/2 Cup - Water"),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _infoCard(IconData icon, String text) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}