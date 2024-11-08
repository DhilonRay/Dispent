import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserReview extends StatefulWidget {
  const UserReview({super.key});

  @override
  State<UserReview> createState() => _UserReviewState();
}

class _UserReviewState extends State<UserReview> {
  final db = FirebaseFirestore.instance;
  List<QueryDocumentSnapshot<Map<String, dynamic>>> userReviews = [];
  Future<void> getuserreviews() async {
    try {
      /*  await db.collection("User FeedBack").get().then((event) {
        
        for (var doc in event.docs) {
          print("${doc.id} => ${doc.data()}");
        }
      }); */
      final event = await db.collection("User FeedBack").get();
      userReviews = event.docs;
      setState(() {});
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    getuserreviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'User Review',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/Untitled design.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                final data = userReviews[index].data();
                return ListTile(
  title: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        data['Name'] ,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
      Text(
        data['Email'],
        style: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal
        ),
      ),
      const SizedBox(height: 8),
      Text(
        data['FeedBack'],
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    ],
  ),
  tileColor: Colors.amber,
  textColor: Colors.white,
);
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: userReviews.length)),
    );
  }
}
