import 'package:flutter/material.dart';

class StudentRegistration extends StatefulWidget {
  const StudentRegistration({Key? key}) : super(key: key);


  @override
  _StudentRegistrationState createState() => _StudentRegistrationState();
}

class _StudentRegistrationState extends State<StudentRegistration> {
  // form key
    final _formKey =  GlobalKey<FormState>();

  final firstNameEditingController = TextEditingController();
  final secondNameEditingController = TextEditingController();
  final classEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    //first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // second name field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // class field
    final classField = TextFormField(
      autofocus: false,
      controller: classEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        classEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.book),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Class",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    // email field

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    
    //  Confirm password field

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,

      //validator: () {}
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //  signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,

        onPressed: () {},
        child: const Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Student Registration Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left:36.0, right: 36.0, bottom: 10,),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 140,
                      child: Image.asset(
                        "assets/images/pcps.png",
                      ),
                    ),
                    const SizedBox(height: 20),
                    firstNameField,
                    const SizedBox(height: 20),
                    secondNameField,
                    const SizedBox(height: 20),
                    classField,
                    const SizedBox(height: 20),
                    emailField,
                    const SizedBox(height: 20),
                    passwordField,
                    const SizedBox(height: 20),
                    confirmPasswordField,
                    const SizedBox(height: 20),
                    signUpButton,
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

