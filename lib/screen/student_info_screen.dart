import 'package:flutter/material.dart';
import '../Utils/global_class.dart';

class StudentDataScreen extends StatefulWidget {
  const StudentDataScreen({super.key});

  @override
  State<StudentDataScreen> createState() => _StudentDataScreenState();
}

class _StudentDataScreenState extends State<StudentDataScreen> {
  TextEditingController txtGrid = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtStd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Add Note",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              setState(
                () {
                  Navigator.pop(context);
                },
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    TextField(
                      controller: txtGrid,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter grid',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: txtName,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Name',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: txtStd,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Std',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Map m1={
              "Grid":txtGrid.text,
              "Name":txtName.text,
              "Std":txtStd.text,
            };
               Global.g1.dataList.add(m1);
                     Navigator.pop(context, [txtGrid.text, txtName.text,txtStd.text]);
            },
          backgroundColor: Colors.amberAccent,
          child: const Icon(
            Icons.save,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}