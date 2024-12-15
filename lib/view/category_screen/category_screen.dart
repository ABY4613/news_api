import 'package:flutter/material.dart';
import 'package:news_api/view/bottom_navigation_bar_screen/bottom_navigation_bar_screen.dart';
import 'package:news_api/view/home_screen/home_screen.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // List of favorite topics
  final List<Map<String, dynamic>> _topics = [
    {'icon': '🏈', 'label': 'Sports'},
    {'icon': '⚖️', 'label': 'Politics'},
    {'icon': '😊', 'label': 'Life'},
    {'icon': '🎮', 'label': 'Gaming'},
    {'icon': '🐻', 'label': 'Animals'},
    {'icon': '🌴', 'label': 'Nature'},
    {'icon': '🍔', 'label': 'Food'},
    {'icon': '🎨', 'label': 'Art'},
    {'icon': '📜', 'label': 'History'},
    {'icon': '👗', 'label': 'Fashion'},
  ];

  final Set<String> _selectedTopics = {};

  void _toggleSelection(String label) {
    setState(() {
      if (_selectedTopics.contains(label)) {
        _selectedTopics.remove(label);
      } else {
        _selectedTopics.add(label);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Select your favorite topics",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Select some of your favorite topics to let us suggest better news for you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: _topics.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 3,
                  ),
                  itemBuilder: (context, index) {
                    final topic = _topics[index];
                    final isSelected = _selectedTopics.contains(topic['label']);
                    return GestureDetector(
                      onTap: () => _toggleSelection(topic['label']),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue.shade100 : Colors.white,
                          border: Border.all(
                            color: isSelected ? Colors.blue : Colors.grey.shade300,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                topic['icon'],
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                topic['label'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected ? Colors.blue : Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen()??HomeScreen(),));
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
