import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ShoePage(),
    );
  }
}

class ShoePage extends StatefulWidget {
  const ShoePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShoePageState createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(); // Repeat the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Opacity(
                  opacity: 0.2,
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.network(
                      "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 0 * 1, 
                      child: Container(
                        height: 200,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Adidas_NMD_R1_Schuh.gif/180px-Adidas_NMD_R1_Schuh.gif",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Nike Air Force Edition",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCategoryButton("SHOES"),
              const SizedBox(width: 10),
              _buildCategoryButton("FOOTWEAR"),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "These running shoes offer lightweight, breathable mesh for optimal ventilation, a cushioned sole for enhanced comfort, and a durable rubber outsole for long-lasting wear.",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Quantity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              const SizedBox(width: 20),
              const Icon(Icons.remove),
              const SizedBox(width: 15),
              Container(
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: const Text("1",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.add),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            ),
            child:
                const Text("PURCHASE", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String label) {
    return Container(
      height: 35,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(label, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
