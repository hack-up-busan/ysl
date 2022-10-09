import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
              print('+1');
            },
            child: Text('추가',
              style: TextStyle(
                  fontSize: 15.0
              ),
            ),
            style: TextButton.styleFrom(
                primary: Colors.blue,
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0)
                )
            ),
          ),
        ],
      ),
    );
  }
}



