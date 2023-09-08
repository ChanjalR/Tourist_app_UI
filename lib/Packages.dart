import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  final List<Map<String, dynamic>> cities = [
    {
      'name': 'Delhi',
      'country': 'India',
      'population': '19 mill',
      'imagePath': 'assets/images/delhi.webp',
    },
    {
      'name': 'Alaska',
      'country': 'USA',
      'population': '4 mill',
      'imagePath': 'assets/images/alaska.jpg',
    },
    {
      'name': 'Effilel Tower',
      'country': 'France',
      'population': '9 mill',
      'imagePath': 'assets/images/effiel.jpg',
    },
    {
      'name': 'Sahara Desert',
      'country': 'Egypt',
      'population': '1 mill',
      'imagePath': 'assets/images/egy.jpg',
    },
    {
      'name': 'Greece',
      'country': 'Greece',
      'population': '4 mill',
      'imagePath': 'assets/images/greece.jpg',
    },
    {
      'name': 'Miami',
      'country': 'USA',
      'population': '6 mill',
      'imagePath': 'assets/images/miami.webp',
    },
    {
      'name': 'Netherland',
      'country': 'Netherland',
      'population': '9 mill',
      'imagePath': 'assets/images/nether.jpg',
    },
    {
      'name': 'NewYork',
      'country': 'USA',
      'population': '6 mill',
      'imagePath': 'assets/images/newyrk.jpg',
    },
    {
      'name': 'Russia',
      'country': 'Russia',
      'population': '11 mill',
      'imagePath': 'assets/images/russ.jpg',
    },
    {
      'name': 'Vancouver',
      'country': 'Canada',
      'population': '5 mill',
      'imagePath': 'assets/images/vanco.webp',
    },
    {
      'name': 'Varanasi',
      'country': 'India',
      'population': '4 mill',
      'imagePath': 'assets/images/varana.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities around the world',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 27,
        color: Colors.black),),
        toolbarHeight: 80,
        backgroundColor: Colors.yellow,
      ),
      body:ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 244, 244),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 150,
                      width: 175,
                      child: Image.asset(city['imagePath'], fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40,left: 30),
                        child: Text(
                          city['name'],
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15,left: 30),
                        child: Text(
                          city['country'],
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 84, 80, 80),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Population: ${city['population']}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 84, 80, 80),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}