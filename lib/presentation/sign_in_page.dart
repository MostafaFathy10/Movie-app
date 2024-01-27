import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/splash_screen.dart';

class SignInPage extends StatelessWidget {
SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: Stack(
          children: [
            Image.asset('assets/images/Alone-in-Berlin-2017-movie-poster.jpg'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 60),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context , MaterialPageRoute(builder: ( (context) => SplashScreen() )));
                    },
                    child: Image.asset('assets/images/arrow.png')),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text('Sign In' , style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Secular One',
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ( (context) => HomePage() )));
                      } , child: Text('Login' , style: TextStyle(
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
}