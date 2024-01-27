import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/image 1.png')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    
                    Positioned(
                      
                      right: 100,
                      top: 0,
                      
                      child: Text('       TENEMOS LAS \n MEJORES PELICULAS' , style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Secular One',
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     Positioned(
                      left: 150,
                      top: 200,
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Ellipse 481.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ellipse 482.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ellipse 483.png'),
                        ],
                       ),
                     ),
                     SizedBox(
                      height: 30,
                     ), 
                    Text('Lorem ipsum dolor sit amet consectetur. Sed \n egestas mi hac faucibus vitae commodo. Tempor \n sagittis elementum suspendisse est convallis \n morbi. Quam viverra sed bibendum id felis dictum ' ,  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 302,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Color.fromRGBO(137, 42, 236, 1)),
                        color: Color.fromRGBO(137, 42, 236, 1),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(137, 42, 236, 1)),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ( (context) => HomePage() )));
                        } , child: Text('Get Started' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                        
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 302,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Color.fromRGBO(137, 42, 236, 1)),
                        color: Color.fromRGBO(137, 42, 236, 1),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(137, 42, 236, 1)),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ( (context) => SignInPage() )));
                        } , child: Text('Login' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
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
      ),
    );
  }
}