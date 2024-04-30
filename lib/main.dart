import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar with Images',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Innovasport Jurado1079'),
        backgroundColor:
            Color(0xff1fe5e2), // Cambia el color de la parte superior aquí
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(
              icon: const Icon(Icons.sports_hockey),
              text: 'Hockey',
            ),
            Tab(
              icon: const Icon(Icons.sports_soccer),
              text: 'Futbol',
            ),
            Tab(
              icon: const Icon(Icons.sports_basketball),
              text: 'Basquetbol',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      1, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/PaloHockey.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(height: 20),
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      1, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/balonnike.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  color: Color(0xffb41111),
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/balonbasquet.jpg',
                    width: 220,
                    height: 600,
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(height: 20),
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      0.5, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/PelotaBeis.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(height: 20),
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      0.5, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/gimnasia.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(height: 20),
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      0.5, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/palosdegolf.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(height: 20),
              Positioned(
                top: 10,
                left: 10,
                child: Transform.scale(
                  scale:
                      0.5, // Cambia este valor para ajustar el tamaño de la imagen
                  child: Image.asset(
                    'assets/images/Tennis.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
