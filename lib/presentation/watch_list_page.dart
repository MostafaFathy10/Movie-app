import 'package:flutter/material.dart';
import 'package:movie_app/presentation/movie_page.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/arrow.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('My Watch-list' , style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Secular One',
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ( (context, index) {
                  return CustomWidgetColumn();
                })),
              ),
              
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ( (context, index) {
                  return CustomWidgetColumn();
                })),
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWidgetColumn extends StatelessWidget {
  const CustomWidgetColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            height: 130,
            child: Image.asset('assets/images/Rectangle 197.png')
            ),
            SizedBox(
          height: 10,
        ),
        
        Text('Los miserables: Extra' , style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
        ),
        
        Row(
          children: [
            Text('5 MIN' , style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
            ),
            SizedBox(
              width: 20,
            ),
            Text('13+' , style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
            ),
            SizedBox(
              width: 120,
            ),
            Image.asset('assets/images/download.png'),
          ],
        ),
        ],
      ),
    );
  }
}