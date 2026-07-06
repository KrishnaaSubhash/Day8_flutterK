import 'package:day8app/homepage.dart';
import 'package:flutter/material.dart';

class Frontpage extends StatelessWidget {
  Frontpage({super.key});

  final List<Map<String, dynamic>> profiles = [
    {"name": "Krishna", "color": Colors.red},
    {"name": "Kids", "color": Colors.blue},
    {"name": "Alex", "color": Colors.green},
    {"name": "Guest", "color": Colors.orange},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Top Banner
          Expanded(
            flex: 9,
            child: Image.network(
              "https://preview.redd.it/first-poster-for-the-sheep-detectives-v0-nhmule2tyy7g1.jpeg?width=640&crop=smart&auto=webp&s=ba5226789a82c70b7c4cea3b5dca9053bf86fb1f",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Bottom Section
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Who's Watching?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Expanded(
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: profiles.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 25,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        final profile = profiles[index];

                        return Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const Homepage(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: profile["color"],
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.08),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            Text(
                              profile["name"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white38,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Manage Profiles",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}