import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('HomePage'),
      drawer: Drawer(
        backgroundColor: Colors.white,
child: Column(
children: [
const UserAccountsDrawerHeader(
currentAccountPicture: CircleAvatar(
backgroundImage: NetworkImage("https://picsum.photos/200/300.webp"),

),
accountName: Text("Praktikum Mobile"),
accountEmail: Text('mobile@gmail.com'),

decoration: BoxDecoration(color:

Colors.lightBlueAccent),

),
ListTile(
leading: const Icon(Icons.settings),
title: const Text('Settings'),
onTap: () {},
),
ListTile(
leading: const Icon(Icons.search),
title: const Text('Cari'),
onTap: () {},
),
],
),
),
);
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Change Screen'),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) {
      //       //       return const Scaffold();
      //       Navigator.pushNamed(context, '/halaman2');
          }
        // ),
      // ),
    // );
  }
// }
