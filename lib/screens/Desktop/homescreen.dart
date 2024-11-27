import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart'; // Update the import path to your project

class HomeScreen extends StatelessWidget {
  // Initialize the HomeController
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          child: Text('Shopify'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Call the toggleSearchBar method in the controller
              homeController.toggleSearchBar();
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Action for cart icon (Add your logic here)
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Navigate to Home
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                // Navigate to Categories
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: Column(
                children: [
                  Text(
                    'Welcome to Shopify!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Explore the best products at amazing prices!',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            // Obx listens to the changes in isSearchVisible
            Obx(() {
              return homeController.isSearchVisible.value
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  : Container(); // Return empty container if search bar is not visible
            }),
            // Additional UI content like products or other sections can go here
          ],
        ),
      ),
    );
  }
}
