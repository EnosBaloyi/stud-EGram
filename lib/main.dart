import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'defaults.dart';

/*
* Student Name    : Enos Baloyi
* Student Number  : 220001220
* Assignment 2    : Main test Assignment
* Purpose         : Application that is used to connect students around campus
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Stud-EGram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> drawerkey = GlobalKey();
  var indexClicked = 0;

  final pages = [
    ListView(
      children: [
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
                title: Text(
                  'TPG',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/image.jpeg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_up_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_down_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.mode_comment),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Lily.23',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Assigments coming like a wave!'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
        //end of First Card

        Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/user3.jfif'),
                ),
                title: Text(
                  'Allowances 101',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/images.jpeg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_up_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_down_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.mode_comment),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'John.031',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Allowances not yet out?'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),

        //end of second Card

        Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/user4.jpg'),
                ),
                title: Text(
                  'StudyBook ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/download.jpeg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_up_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.thumb_down_alt_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.mode_comment),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Ndivhuwo.019',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Inbox for Exam Tips.'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
        //last Card
      ],
    ),
    const Center(
      child: Text('Book List coming soon'),
    ),
    const Center(
      child: Text('Cafeteria'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.pacifico(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            splashColor: Colors.grey[50],
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashColor: Colors.grey[50],
            icon: const Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashColor: Colors.grey[50],
            icon: const Icon(
              Icons.mail_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      key: drawerkey,
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage('assets/images/person.png'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Enos Baloyi',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '220001220@gmail.com',
                      style: GoogleFonts.roboto(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  ListTile(
                    leading: Icon(Icons.school_outlined),
                    title: Text(
                      'Enos Baloyi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('220001220'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 60,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomItemIcon[1],
            ),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Defaults.bottomItemIcon[2],
            ),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                setState(() {
                  drawerkey.currentState!.openEndDrawer();
                });
              },
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.png'),
              ),
            ),
            label: Defaults.bottomNavItemText[3],
          ),
        ],
      ),
    );
  }
}
