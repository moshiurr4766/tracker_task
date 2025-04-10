import 'package:flutter/material.dart';

class Task19 extends StatefulWidget {
  const Task19({super.key});

  @override
  State<Task19> createState() => _Task19State();
}

class _Task19State extends State<Task19> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  bool _isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
      if (_isDrawerOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Animated Drawer'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _toggleDrawer,
        ),
      ),
      body: Stack(
        children: [
          // Main content
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Main Content',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          
          // Drawer
          if (_isDrawerOpen)
            GestureDetector(
              onTap: _toggleDrawer,
              child: Container(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          
          SlideTransition(
            position: _slideAnimation,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: double.infinity,
              color: Colors.blueGrey[800],
              child: const DrawerContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Colors.blueGrey[900],
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.blueGrey),
              ),
              SizedBox(height: 10),
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'john.doe@example.com',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _buildDrawerItem(Icons.home, 'Home'),
              _buildDrawerItem(Icons.settings, 'Settings'),
              _buildDrawerItem(Icons.person, 'Profile'),
              _buildDrawerItem(Icons.history, 'History'),
              _buildDrawerItem(Icons.help, 'Help'),
              _buildDrawerItem(Icons.logout, 'Logout'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        
      },
    );
  }
}