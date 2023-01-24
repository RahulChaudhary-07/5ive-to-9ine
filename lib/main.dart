import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Image.asset(
                "assets/images/loginPage_mirror.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Divider(
                color: Colors.black87,
                thickness: 2,
              ),
              Row(
                children: [
                  Name_Widget(name: "First Name"),
                  SizedBox(width: 20),
                  Name_Widget(name: "Last Name"),
                ],
              ),
              address_widget(label: "address"),

              Row(
                children: [
                  Expanded(
                    // flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Pincode",
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Format is wrong";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Country",
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TextFormField(
                  inputFormatters: [],
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp('[0-9]').hasMatch(value)) {
                      return "Format is wrong";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('validated');
                  } else {
                    print("format is not correct");
                  }
                },
                child: Text('Submit'),
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Name_Widget extends StatelessWidget {
  final String? name;
  const Name_Widget({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: name,
        ),
        validator: (value) {
          if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
            return "Format is wrong";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class address_widget extends StatelessWidget {
  final String? label;
  const address_widget({
    Key? key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
    );
  }
}
