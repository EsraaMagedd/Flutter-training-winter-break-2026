import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              TextField(
                // obscureText: false,
                // maxLines: 3,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  // filled: true,
                  // fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                  // suffixIcon: Icon(Icons.email,color: Colors.blueAccent,),
                  // hint: Text('Email',style: TextStyle(
                  //   color: Colors.grey,
                  //   fontSize: 20,
                  // ),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: isObsecure,
                decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObsecure = !isObsecure;
                      setState(() {});
                    },
                    icon: Icon(
                      isObsecure == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.redAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password?', style: TextStyle()),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward, color: Colors.redAccent),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('login'.toUpperCase(),style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
                )
                  ,),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text('Don\'t have an account? Register',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
              ),
              SizedBox(height: 100),
            Center(
              child: Text('Or login with',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
            ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade200,blurRadius: 5,
                            spreadRadius: 1)
                      ]
                    ),
                    child: Image.asset('assets/google.png'),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade200,blurRadius: 5,
                              spreadRadius: 1)
                        ]
                    ),
                    child: Image.asset('assets/facebook.png'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
