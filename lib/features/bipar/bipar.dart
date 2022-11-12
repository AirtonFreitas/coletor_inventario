import 'package:flutter/material.dart';
import 'package:flutter_zxing/flutter_zxing.dart';

class BiparScreen extends StatefulWidget {
  const BiparScreen({Key? key}) : super(key: key);

  @override
  State<BiparScreen> createState() => _BiparScreenState();
}

class _BiparScreenState extends State<BiparScreen> {
  //String cameraController;
  //StartImageStream a = StartIma

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _builBody(),
    );
  }

  Widget _builBody() {
    return Center(
      child: TextButton(
        onPressed: () async {
          ReaderWidget(onScan: (value) {
            print(value);
          });
          //
          // await startCameraProcessing(); // Call this in initState
          // cameraController?.startImageStream((image) async {
          //   CodeResult result = await processCameraImage(image);
          //   if (result.isValidBool) {
          //     debugPrint(result.textString);
          //   }
          //   return null;
          // });
          // stopCameraProcessing();
        },
        child: Text('asadadsad'),
      ),
    );
  }
}
