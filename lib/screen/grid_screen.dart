import 'package:flutter/material.dart';

class gridpage extends StatefulWidget {
  const gridpage({super.key});

  @override
  State<gridpage> createState() => _gridpageState();
}

class _gridpageState extends State<gridpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mau makan apa hari ini',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ini dia makanan paling laris bulan ini',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 37, 37, 37),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    color: Colors.blue,
                    child: Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhEqmjzvFK_6JVQVD0AQeKc8DW5bFuvXmXEsami42oZLyTxQSf6JlITjtfvFBykIPgH1E&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Menu lainya yang enak nih ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 150, // Sesuaikan tinggi grid horizontal
            child: GridView(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisSpacing: 10,
              ),
              children: [
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhEqmjzvFK_6JVQVD0AQeKc8DW5bFuvXmXEsami42oZLyTxQSf6JlITjtfvFBykIPgH1E&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
