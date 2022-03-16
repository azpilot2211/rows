import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACCESSIBILITY APP'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow.shade700,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Expanded(
                    child: Image.asset(
                        'assets/blindeye.png',
                      height: 150,
                      width: 200,
                    ),
                  flex: 1,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                          'SUBVI.ORG',
                        style: TextStyle(fontFamily: 'Russ', fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.yellow.shade700,

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (kDebugMode) {
            print('You clicked me');
          }
        },
        icon: const Icon(Icons.volunteer_activism),
        label: const Text("SUPPORT US"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow.shade700,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow.shade700,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}

