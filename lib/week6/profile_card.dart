import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String imageUrl;
  const ProfileCard({super.key, required this.name, required this.position, required this.email, required this.phone, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 166, 166, 166), // สีของเงา
            blurRadius: 10, // ความฟุ้งของเงา
            spreadRadius: 2, // ขนาดการกระจายของเงา
            offset: const Offset(4, 4), // ตำแหน่งของเงา (x, y)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(name, style: TextStyle(color: Colors.black, fontSize: 15)),
          Text(position, style: TextStyle(color: const Color.fromARGB(255, 69, 69, 69), fontSize: 10)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.email, size: 16, color: Colors.black54),
              const SizedBox(width: 5),
              Text(email, style: const TextStyle(color: Colors.black, fontSize: 12)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.phone, size: 16, color: Colors.black54),
              const SizedBox(width: 5),
              Text(phone, style: const TextStyle(color: Colors.black, fontSize: 12)),
            ],
          )
          
        ],
      ),
    );
  }
}