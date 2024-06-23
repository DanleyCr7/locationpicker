import 'package:flutter/material.dart';
import 'package:place_picker/place_picker.dart';

class PickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PickerDemoState();
}

class PickerDemoState extends State<PickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Picker Example')),
      body: Center(
        child: GestureDetector(
          child: Text("Pick Delivery location"),
          onTap: () {
            showPlacePicker();
          },
        ),
      ),
    );
  }

  void showPlacePicker() async {
    LocationResult? result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlacePicker(
              "YOUR API KEY",
              color: Colors.black,
            )));

    // Handle the result in your way
    print(result);
  }
}
