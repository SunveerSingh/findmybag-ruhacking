import 'package:flutter/material.dart';

class LoadUnload extends StatefulWidget {
  const LoadUnload({Key? key}) : super(key: key);

  @override
  State<LoadUnload> createState() => _LoadUnloadState();
}

class _LoadUnloadState extends State<LoadUnload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                final snackBar = SnackBar(
                  content: const Text('Location Updated!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.greenAccent,
                ),
                child: Center(child: Text('Update Location')),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                final snackBar = SnackBar(
                  content: const Text('Informed Owner!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.greenAccent,
                ),
                child: Center(child: Text('Lost & Found')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
