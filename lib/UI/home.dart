import 'package:flutter/material.dart';
import 'package:ryanlist/UI/produklist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(index);
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ));
        break;
      case 1:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => produklist(),
            ));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Update AppBar
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[Text('Home')]),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('click seacrh');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                print('click seacrh');
              },
            ),
          ]),
      // widget drawer
      // widget drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawwer Header diisi dengan informasi akun
            UserAccountsDrawerHeader(
              accountName: const Text('I Made Ryan Dana Krisna Budi'),
              accountEmail: const Text("ryan.dana@undiksha.ac.id"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  // mengambil gamabar dari internet menggunakan NetworkImage
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                ),
              ),
              // memberikan background pada Drawer Header
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appimages/drawer.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // Menu Drawer
            const ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.notifications_none),
            ),
            const ListTile(
              title: Text('Wishlist'),
              trailing: Icon(Icons.bookmark_border),
            ),
            const ListTile(
              title: Text('Akun'),
              trailing: Icon(Icons.verified_user),
            ),
            // Divider Menu
            const Divider(height: 2),
            const ListTile(
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            )
          ],
        ),
        // seluruh body dibungkus column
// tidak terdapat perubahan pada body pada body home.dart tugas ardi sebelumnya
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/appimages/buyan1.jpg"),
// setiap bagian body di pisahkan oleh container
          Container(
            color: Color.fromARGB(255, 101, 141, 206),
            padding: const EdgeInsets.all(15),
// untuk menampilkan secara horisontal maka menggunakan Row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Rp: 190.000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Points 10.200',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text('Up 70%')
              ],
            ),
          ),
// setip bagian body di pisahkan oleh container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
// untuk membuat tampilan secara horisontal maka digunkan row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// untuk membuat tampilan secara vertikal maka digunkan column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.border_all_sharp, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Semua Kategori",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shop_rounded, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Fashion",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.computer, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Computer",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone_android, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Gadget",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Lake Oeschinen lies at foot of the bluemlisalp in bernese'
              'Alps. Situated 1,578 meters above sea level, it is one of the'
              'larger Alpine Lakes. A gondola ride from kandersteg, followed by a'
              'half-hour walk through pastures and pine forest, leads you to the'
              'lake, which warms to 20 degress Celsius in the summer.Activites'
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
