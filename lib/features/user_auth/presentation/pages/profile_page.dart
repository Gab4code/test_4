import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_4/features/user_auth/presentation/widgets/my_list_tile.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //header
            Column(
              children: [
                Center(
              child: Icon(
                Icons.person,
                size: 200,
              ),
            ),
            MyListTile(
              icon: Icons.manage_accounts,
              text: 'Username',
              onTap: () {
                //username tap functionality (edit user)
              },
             ),
            MyListTile(
              icon: Icons.manage_accounts,
              text: 'Email',
              onTap: () {
                //email tap functionality (edit user)
              },
             ),
            MyListTile(
              icon: Icons.admin_panel_settings,
              text: 'Password',
              onTap: () {
                //username tap functionality (edit user)
              },
             ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Container(
                color: Colors.grey,
                child: MyListTile(
                  icon: Icons.logout,
                  text: 'Log Out',
                  onTap: () {
                    signUserOut;
                    Navigator.pushNamed(context, "/login");
                    //username tap functionality (edit user)
                  },
                 ),
              ),
            ),
             


          //profile list tile

          //logout
        ],
      )
    );
  }
}