import 'package:flutter/material.dart';
import 'package:weekly2/about.dart';
import 'package:weekly2/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Function to show the sidebar (Drawer)
  void _showSidebar() {
    Scaffold.of(context).openDrawer();
  }

  // Function to navigate to CupertinoContactPage
  void _navigateToContactPage() {
    Navigator.pop(context); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CupertinoContactPage()),
    );
  }

  void _navigateToAboutPage() {
    Navigator.pop(context); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutUsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Sidebar Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                // Navigate to the Contact Us page
                _navigateToContactPage();
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                // Navigate to the About Us page
                _navigateToAboutPage();
                //Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Navigate to the Login page
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://www.gramedia.com/blog/content/images/2018/11/bodo-amat.jpg',
                      height: 200, // Adjust the height as needed
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Welcome to the Online Library!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Explore a world of knowledge and literature.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    // Book Cards
                    _buildBookCard(
                      'Beginning App Development with Flutter',
                      'https://docs.flutter.dev/assets/images/docs/cover/beginning-app-development-with-flutter.jpg',
                    ),
                    SizedBox(height: 10),
                    _buildBookCard(
                      'Title of the Second Book',
                      'https://m.media-amazon.com/images/I/41CZ428wjeL.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookCard(String title, String imageUrl) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
