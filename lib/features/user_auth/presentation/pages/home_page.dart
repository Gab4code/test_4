import 'package:flutter/material.dart';
import 'package:test_4/features/user_auth/presentation/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("HomePage"),
        automaticallyImplyLeading: false,   //removes back button
        actions:<Widget> [
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Account Management',
            onPressed: (){
              Navigator.pushNamed(context, "/profile");
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Tutorial / Help',
            onPressed: (){
              Navigator.pushNamed(context, "/tutorial");
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome to Home")
      ),
    );
  }
}