import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcode extends StatefulWidget {
  const QRcode({Key? key}) : super(key: key);

  @override
  State<QRcode> createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: "1234567890",
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
