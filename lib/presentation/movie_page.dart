import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/watch_list_page.dart';

class MoviePage extends StatelessWidget {
MoviePage({super.key, required this.images});
final String images;
  @override
  Widget build(BuildContext context) {
    List images = [
  'assets/images/Rectangle 187 (2).png',
  'assets/images/Rectangle 189.png',
  'assets/images/Alone-in-Berlin-2017-movie-poster.jpg',
  'assets/images/UP.jpg',
  'assets/images/sea.jpg',
  'assets/images/red.jpg',
  'assets/images/guard.jpg',
  'assets/images/large_hampstead-poster.jpg',
  'assets/images/ocean.jpg',
  'assets/images/home.jpg',
];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/image 2.png')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 60),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ( (context) => HomePage())));
                      },
                      child: Image.asset('assets/images/arrow.png')),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset('assets/images/Ellipse 491.png'),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Image.asset('assets/images/Top.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('1H 52MIN' , style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('13+' , style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('2012' , style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('4K UHD' , style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        ),
                        
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: ( (context) => WatchListPage())));
                            },
                            child: Image.asset('assets/images/play.png')),
                          Spacer(),
                          Image.asset('assets/images/plus.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/images/download.png'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Lorem ipsum dolor sit amet consectetur .\nUltrices quis quam sit amet. Id duis affgorae \ndignissim non suspendisse nulla leo.' , style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lorem ipsum dolor sit amet consectetur. Commodo mirtadorp \nconsequat phasellus metus.' , style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Extras' , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ( (context, index) {
                        return CustomWidgetColumn();
                      })),
                    ),
                    Text('Más contenido similar' , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ( (context, index) {
                        return CustomWidgetImage(image: images[index]);
                      })),
                    ),
                     
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

class CustomWidgetImage extends StatelessWidget {
   CustomWidgetImage({
    super.key, required this.image
  });
final String image;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
       children: [
         Container(
          width: 130,
          height: 220,
          child: Image.asset(image)
          ),
       ],
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