import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/sign_in_page.dart';
import 'package:movie_app/presentation/watch_list_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 13.41,
                height: 13.41,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: ( (context) => HomePage())));
                  },
                  child: Image.asset('assets/images/exit.png'))
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context , MaterialPageRoute(builder: ( (context) => HomePage())));
                  },
                  child: Text('Home' , style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ( (context) => WatchListPage())));
                  },
                  child: Text('Watchlist' , style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('About' , style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: ( (context) => SignInPage() )));
                  },
                  child: Text('Logout' , style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      child: Image.asset('assets/images/arrow1.png')
                      ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}