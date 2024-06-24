import 'package:flutter/material.dart';

class AddKeyResult extends StatelessWidget {
  const AddKeyResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Key Result',
              prefixIcon: Container(
                padding: const EdgeInsets.all(10), // Adjust padding for the icon
                child: Image.asset(
                  'assets/okr/goal.png',
                  width: 20,
                  height: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xff3085FE)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))))),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Add Key Result',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
