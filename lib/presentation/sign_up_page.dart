import 'package:flutter/material.dart';
import 'package:movie_app/presentation/custom_snackbar.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/sign_in_page.dart';
import 'package:movie_app/presentation/splash_screen.dart';

class SignUpPage extends StatefulWidget {
SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
bool isChecked = false;
class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: Stack(
          children: [
            Image.asset('assets/images/Alone-in-Berlin-2017-movie-poster.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 45),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context , MaterialPageRoute(builder: ( (context) => SplashScreen() )));
                    },
                    child: Image.asset('assets/images/arrow.png')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(' Create \n Account'  , style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Secular One',
                  ),
                  ),
                  TextField(
                    onChanged: (value) {
                    email = value;
                  },
                    decoration: InputDecoration(
                      label: Text('Email' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                      hintText: 'e.g. example@mail.com',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(63, 30, 136, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                    decoration: InputDecoration(
                      label: Text('Password' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                      hintText: 'e.g. Examp!e2006',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(63, 30, 136, 1)),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/images/visible.png'),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                    decoration: InputDecoration(
                      label: Text('Confirm Password' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(63, 30, 136, 1)),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/images/visible.png'),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                         onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                         }
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('I agree to the terms And privacy \n policy' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 302,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(137, 42, 236, 1),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(137, 42, 236, 1)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: ()async {
                        if(formKey.currentState!.validate()){
                          isLoading = true;

                          setState(() {});
                          try{
                            await loginUser();
                            ShowSnackBar(context, 'Account created');
                            
                          } on FirebaseException catch(ex){
                            if(ex == 'No account created'){
                              ShowSnackBar(context, 'No account created');
                            }
                          }
                          isLoading = false;
                          setState(() {});
                          Navigator.push(context, MaterialPageRoute(builder: ( (context) => HomePage())));
                        }
                         
                      } , child: Text('Create account' , style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),),
                      
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Future<void> loginUser() async {
  var FirebaseAuth;
  UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email! , password: password!);
}
}
GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? password;
  
  
  String? confirmPassword;
  bool isLoading = false;