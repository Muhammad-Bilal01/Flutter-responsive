import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text("D E S K T O P"),
      ),
      body: Row(
        children: [
          // Video + Comment
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 8 / 3,
                    child: Container(
                      color: Colors.deepPurple[500],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap:
                        true, // Ensures ListView takes only needed space
                    itemCount: 20,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.deepPurple[500],
                        height: 80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Suggested Video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.28,
              color: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
