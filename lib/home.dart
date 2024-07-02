import 'package:flutter/material.dart';

void main() {
  runApp(DessanteApp());
}

class DessanteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dessante',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chat, color: Colors.black),
          onPressed: () {},
          
        ),
        title: Center(
          child: Image.asset(
            'assets/logo.png',
            height: 80,
          ),
        ),
        actions:[
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(height: 20),
            SectionTitle('Categories'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['Toner', 'Moisturizer', 'Serum', 'Sunscreen']
                  .map((title) => ElevatedButton(
                        onPressed: () {},
                        child: Text(title),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CategoryCard(
                        title: 'Toner',
                        description:
                            'It is a toner that works together to support the natural moisture barrier of your skin.',
                        imagePath: 'assets/SerumPeach.png',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CategoryCard(
                        title: 'Serum',
                        description:
                            'It is a serum that works together to support the natural moisture barrier of your skin.',
                        imagePath: 'assets/sleepingmask.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Placeholder for other widgets below CategoryCards
              ],
            ),
            SectionTitle('Popular Items'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopularItemCard(
                  title: 'Peach 70 Niacin Serum',
                  price: 'Rp 345.000',
                  imagePath: 'assets/SerumPeach.png',
                ),
                PopularItemCard(
                  title: 'Lip Sleeping Mask',
                  price: 'Rp 310.000',
                  imagePath: 'assets/sleepingmask.png',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {},
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Products',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  CategoryCard(
      {required this.title, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.network(imagePath, width: 50, height: 50),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(description),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Explore'),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  PopularItemCard(
      {required this.title, required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imagePath, width: 80, height: 80),
        SizedBox(height: 5),
        Text(title),
        Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}