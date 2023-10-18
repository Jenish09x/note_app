import 'package:flutter/material.dart';

import '../utils/global_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Student Data",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: ListView.builder(
              itemExtent: 100,
              itemCount: Global.g1.dataList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Grid : ${Global.g1.dataList[index]['Grid']}"),
                              const Spacer(),
                              Text("Name : ${Global.g1.dataList[index]["Name"]}"),
                              Text("Std : ${Global.g1.dataList[index]["Std"]}"),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  Global.g1.dataList.remove(index);
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'data').then(
              (value) {
                setState(() {});
              },
            );
          },
          backgroundColor: Colors.amberAccent,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}