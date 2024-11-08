import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateUserReviewScreen extends StatefulWidget {
  const CreateUserReviewScreen({super.key});

  @override
  State<CreateUserReviewScreen> createState() => _CreateUserReviewScreenState();
}

class _CreateUserReviewScreenState extends State<CreateUserReviewScreen> {
  TextEditingController textController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();

  Future<void> _submitReview() async {
    try {
      // Store to Firestore
      await FirebaseFirestore.instance.collection('User FeedBack').add({
        'Name': nameTextController.text,
        'Email': emailTextController.text,
        'FeedBack': textController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Return to previous screen
      Navigator.pop(context, true); // Return true to indicate success

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Review submitted successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error submitting review: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create user review"),
      ),
      body: Column(
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(
                label: Text("Review"), hintText: "Enter review"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: nameTextController,
            decoration:
                InputDecoration(label: Text("Name"), hintText: "Enter name"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: emailTextController,
            decoration:
                InputDecoration(label: Text("Email"), hintText: "Enter email"),
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(24, 10, 24, 30),
          child: ElevatedButton.icon(
              icon: Icon(Icons.add),
              onPressed: _submitReview,
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
              label: Text("Submit review"))),
    );
  }
}
