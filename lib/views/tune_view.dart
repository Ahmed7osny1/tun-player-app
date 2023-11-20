import 'package:flutter/material.dart';
import 'package:tunplayerapp/models/tune_model.dart';
import 'package:tunplayerapp/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red,
        sound: 'note1.wav'),
    TuneModel(color: Colors.orange,
        sound: 'note2.wav'),
    TuneModel(color: Colors.yellow,
        sound: 'note3.wav'),
    TuneModel(color: Colors.green,
        sound: 'note4.wav'),
    TuneModel(color: Colors.teal,
        sound: 'note5.wav'),
    TuneModel(color: Colors.blue,
        sound: 'note6.wav'),
    TuneModel(color: Colors.purple,
        sound: 'note7.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff253238),
        centerTitle: true,
        title: const Text(
          "Flutter Tune",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: tunes.map(
              (e) => TuneItem(tune: e),
        ).toList(),
      ),
    );
  }

// List<TuneItem> getTuneItem() {
//
//   List<TuneItem> tuneItems = [];
//
//   for(var color in tuneColors){
//     tuneItems.add(TuneItem(color: color));
//   }
//   return tuneItems;
//}

}