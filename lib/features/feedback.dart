import 'package:flutter/material.dart';

import '../home_screen.dart';

class FeedbackInfo extends StatefulWidget {
  const FeedbackInfo({Key? key}) : super(key: key);

  @override
  State<FeedbackInfo> createState() => _FeedbackInfoState();
}

class _FeedbackInfoState extends State<FeedbackInfo> {
  //  final TextEditingController _controller = TextEditingController();
  // final GlobalKey<FormState> _formKey = GlobalKey();

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        // key: _formKey,
        child: TextFormField(
          // controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter your feedback here',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter a value';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),

          // onTap: () {
          //                     Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                             builder: (context) => HomeScreen()));
          //                   },
        ),
        // TextButton(
        // child: const Text('Send'),
        //   // onPressed: () async {
        //   //   /**
        //   //    * Here we will add the necessary code to
        //   //    * send the entered data to the Firebase Cloud Firestore.
        //   //    */
        //   // },
        // ),
      ],
    );
  }
}
