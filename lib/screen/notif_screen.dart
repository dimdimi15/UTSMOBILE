import 'package:flutter/material.dart';

class notif extends StatefulWidget {
  const notif({Key? key}) : super(key: key);

  @override
  State<notif> createState() => _notifState();
}

class _notifState extends State<notif> {
  List<Order> orders = [
    Order(
      title: 'Rendang',
      description: 'Menu rendang sangat ramai sekali, dan sudah ada 10 pesanan',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU',
    ),
    Order(
      title: 'Ayam',
      description: 'Menu ayam sudah habis hari ini ',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28n9jMlUf2e77Q1U5X_JrMB8Nq6ZzMztOq4fZdhIMKaSoIqJAvx9XOj3_UCR6qtdZP74&usqp=CAU',
    ),
    // Tambahkan pesanan lain jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemberitahuan '),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderCard(order: orders[index]);
        },
      ),
    );
  }
}

class Order {
  final String title;
  final String description;
  final String imageUrl;

  Order({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            order.imageUrl,
            height: 150.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(order.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
