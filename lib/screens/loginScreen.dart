import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_5to9_1/screens/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
        // fontFamily: '',
        primaryTextTheme: GoogleFonts.playfairDisplayTextTheme(),
      ),
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
                  NameWidget(name: "First Name"),
                  SizedBox(width: 20),
                  NameWidget(name: "Last Name"),
                ],
              ),
              AddressWidget(label: "E-mail"),

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
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomeScreen()),
                    ),
                  );
                  if (_formKey.currentState!.validate()) {
                    print('validated');
                  } else {
                    print("format is not correct");
                  }
                },
                child: Text('Submit'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              // Spacer(),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  SizedBox(width: 10),
                  Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonButton(
                    image: "google",
                    title: "Google",
                  ),
                  CommonButton(
                    image: "facebook",
                    title: "Facebook",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Already have an Account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text("SignIn"),
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class CommonButton extends StatelessWidget {
  final String image, title;

  const CommonButton({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            "assets/images/$image.png",
            scale: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Sign up with $title",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  final String? name;
  const NameWidget({
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

class AddressWidget extends StatelessWidget {
  final String? label;
  const AddressWidget({
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
