import 'package:flutter/material.dart';

class abc extends StatefulWidget {
  const abc({Key? key}) : super(key: key);

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  final formkey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  String username = "denish@gmail.com";
  String pass = "denish123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                controller: controller,
                validator: (value) {
                  setState(() {});
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (emailValid) {
                    return null;
                  } else {
                    return "Email  is required";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    if (username == controller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Center(
                            child: Text("Hello"),
                          ),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid Credential"),
                      ),
                    );
                  }
                },
                height: 50,
                minWidth: 350,
                color: Colors.indigo,
                child: Text(
                  "press",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
