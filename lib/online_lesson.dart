import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Expanded(
          //   flex: 3,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     color: Colors.amber,
          //   ),
          // ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Image(image: NetworkImage('http://picsum.photos/100')),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
              ),
              Text("UserName"),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          )
        ],
      ),
    );
  }
}
/* 
 Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(radius: 30),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 170),
                        Text(
                          "sun",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Text message",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(radius: 30),
            title: Text(
              "User Name",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Text message",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("sun"),
          ),
         

*/
