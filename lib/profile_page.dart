// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ListView(
        children: <Widget>[
          // ignore: prefer_const_constructors
          SizedBox(height: 35),
          // ignore: prefer_const_constructors
          Text(
            "Messages",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 35),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Mahzuz'),
              subtitle: Text("Hallo allo"),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Hazman'),
              subtitle: Text("Ola ngab!"),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Kang Dilan'),
              subtitle: Text("KAMU NANYEAAA?"),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Mang oleh'),
              subtitle: Text('Hayu meuli odading mang oleh'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Bambang tabung gas'),
              subtitle: Text('beli gasnya cuma 1 a?'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Speeede'),
              subtitle: Text('SEWYYYYY'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('pak jok'),
              subtitle: Text('woah kaget'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('prabu'),
              subtitle: Text('karena kami tidak punya uang'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Ujang'),
              subtitle: Text('tipsen euy 152020012'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('dwiki'),
              subtitle: Text('alo alo jus'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('mj'),
              subtitle: Text('stop it get some help'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('Djoes'),
              subtitle: Text('palo ga jos'),
              dense: false,
            ),
          ),
          Card(
            child: ListTile(
              leading: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                ),
              ),
              title: const Text('wardi'),
              subtitle: Text('balik balik'),
              dense: false,
            ),
          ),
        ],
      ),
    );
  }
}
