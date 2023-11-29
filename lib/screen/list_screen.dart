import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MAKAN BANYAK , BANYAK MENU ENAK'),
        ),
        body: HalamanPencarianGambar(),
      ),
    );
  }
}

class HalamanPencarianGambar extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<HalamanPencarianGambar> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allImages = [
    'tahu',
    'rendang',
    'ayam',

    // ... tambahkan lebih banyak URL gambar
  ];

  List<String> _filteredImages = [];

  @override
  void initState() {
    super.initState();
    _filteredImages = _allImages;
  }

  void _filterImages(String query) {
    query = query.toLowerCase();
    setState(() {
      if (query == 'tahu') {
        _filteredImages = _allImages.where((image) => image == 'tahu').toList();
      } else {
        _filteredImages = _allImages
            .where((image) =>
                image.toLowerCase().contains(query) && image != 'tahu')
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            onChanged: _filterImages,
            decoration: InputDecoration(
              labelText: 'Cari menu',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: _filteredImages.length,
            itemBuilder: (context, index) {
              if (_filteredImages[index] == 'tahu') {
                return Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU',
                  fit: BoxFit.cover,
                );
              } else if (_filteredImages[index] == 'rendang') {
                return Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpoDzQvJIih0gE0i3_SFs1BG7OyOvMQ4AhuFBPdzHG1pkLqLuc7lnYOxsN5tklhOIjHaQ&usqp=CAU',
                  fit: BoxFit.cover,
                );
              } else if (_filteredImages[index] == 'ayam') {
                return Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhEqmjzvFK_6JVQVD0AQeKc8DW5bFuvXmXEsami42oZLyTxQSf6JlITjtfvFBykIPgH1E&usqp=CAU',
                  fit: BoxFit.cover,
                );
              }
              return Placeholder();
            },
          ),
        ),
      ],
    );
  }
}
