import 'package:flutter/material.dart';

class CreateUserReviewScreen extends StatefulWidget {
  const CreateUserReviewScreen({super.key});

  @override
  State<CreateUserReviewScreen> createState() => _CreateUserReviewScreenState();
}

class _CreateUserReviewScreenState extends State<CreateUserReviewScreen> {
  TextEditingController textController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
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
              onPressed: () {
                Navigator.pop(context, <String, String>{
                  'name': nameTextController.text,
                  'email': emailTextController.text,
                  'feedback': textController.text,
                });
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
              label: Text("Submit review"))),
    );
  }
}
