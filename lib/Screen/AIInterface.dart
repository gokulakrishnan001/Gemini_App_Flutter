import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

TextEditingController prompt=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gemini_AI Interface'),
        backgroundColor: Colors.grey,
      ),
      bottomNavigationBar: inputTextField(),
    );
  }

  Widget inputTextField() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: prompt,
                    decoration: const InputDecoration(
                        hintText: "Write promt...",
                        
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color.fromARGB(255, 58, 119, 233),
                  elevation: 0,
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
