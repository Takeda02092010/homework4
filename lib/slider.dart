import 'package:flutter/material.dart';

class SliderDars extends StatefulWidget {
  const SliderDars({super.key});

  @override
  State<SliderDars> createState() => _SliderDarsState();
}

class _SliderDarsState extends State<SliderDars> {
  double volume = 100.0;
  String feeling="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(feeling,style: const TextStyle(fontSize: 80.0),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
               feeling="Happy";
                setState(() {
            
                });
              },
              icon: const Text(
                "😊",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
            IconButton(
              onPressed: () {
                feeling="Surprise";
                setState(() {});
              },
              icon: const Text(
                "😐",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
            IconButton(
              onPressed: () {
               feeling="Sad";
                setState(() {});
              },
              icon: const Text(
                "😢",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
            IconButton(
              onPressed: () {
                feeling="Angry";
                setState(() {});
              },
              icon: const Text(
                "😡",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
            IconButton(
              onPressed: () {
             feeling="Sleepy";
                setState(() {});
              },
              icon: const Text(
                "😴",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ],
        )
      ],
    )
        //Column(
        // children: [
        //     Slider(
        //       value: volume,
        //       max: 100.0,
        //       secondaryActiveColor: Colors.grey,
        //       secondaryTrackValue: 70.0,
        //       divisions: 10,
        //       label: volume.toString(),
        //       inactiveColor: Colors.orange,
        //       activeColor: Colors.redAccent,
        //       overlayColor: const WidgetStatePropertyAll(Colors.red),
        //       onChanged: (v) {
        //         setState(() {
        //           volume = v;
        //         });
        //       },
        //     ),
        //     Stack(
        //       children: [
        //         const Image(
        //           image: NetworkImage(
        //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkIoGaDP3lS4if5aIE1VCPkOWxQ2vTW0_5gA&s"),
        //           // fit: BoxFit.cover,
        //         ),
        //         Container(
        //           height: 190.0,
        //           width: 290.0,
        //           decoration: BoxDecoration(
        //               color: Colors.black.withValues(alpha: volume / 100.0)),
        //         )
        //       ],
        //     ),
        //   ],
        // )

        //  Column(
        //   children: [
        //     const SizedBox(
        //       height: 20.0,
        //     ),
        // Slider(
        //   value: volume,
        //   max: 100.0,
        //   secondaryActiveColor: Colors.grey,
        //   secondaryTrackValue: 70.0,
        //   divisions: 10,
        //   label: volume.toString(),
        //   inactiveColor: Colors.orange,
        //   activeColor: Colors.redAccent,
        //   overlayColor: const WidgetStatePropertyAll(Colors.red),
        //   onChanged: (v) {
        //     setState(() {
        //       volume = v;
        //     });
        //   },
        // ),
        //   ],
        // ),
        );
  }
}
