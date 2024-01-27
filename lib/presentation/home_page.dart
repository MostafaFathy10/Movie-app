import 'package:flutter/material.dart';
import 'package:movie_app/presentation/menu_page.dart';
import 'package:movie_app/presentation/movie_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/Rectangle 186.png')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 40),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ( (context) => MenuPage() )));
                      },
                      child: Image.asset('assets/images/Vector.png')),
                    Spacer(),
                    Image.asset('assets/images/Ellipse 491.png'),
                  ],
                ),
              ),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Center(
                    child: Image.asset('assets/images/movie+.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Image.asset('assets/images/viking.png')),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text('Para maratonear' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                    ),
                    Center(
                      child: Text('Lorem ipsum dolor sit amet consectetur. Eget \n dictum est penatibus eget nunc. Enim \n pellentesque venenatis enim.' , style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Ellipse 484.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Ellipse 485.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Ellipse 486.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Ellipse 487.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Ellipse 488.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Ellipse 489.png'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Mi lista' , style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                          ),
                    ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SizedBox(
                            height: 180,
                            child: ListView.builder(
                              itemCount: 10,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ( (context, index) {
                              return CustomWidgetColumn();
                            })),
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Solo en Movie+' , style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: 250,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ( (context, index) {
                          return CustomWidgetContainer();
                        })),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Nuevos estrenos' , style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: 160,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ( (context, index) {
                          return CustomWidgetImage();
                        })),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Peliculas Top' , style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ( (context, index) {
                          return CustomWidgetRow();
                        })),
                      ),
                    )
                    
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWidgetRow extends StatelessWidget {
  const CustomWidgetRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ( (context) => MoviePage(images: ''))));
        },
        child: Column(
          children: [
            Image.asset('assets/images/Rectangle 188.png'),
          ],
        ),
      ),
    );
  }
}

class CustomWidgetImage extends StatelessWidget {
  const CustomWidgetImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ( (context) => MoviePage(images: ''))));
        },
        child: Column(
          children: [
            Image.asset('assets/images/Rectangle 192.png'),
          ],
        ),
      ),
    );
  }
}

class CustomWidgetContainer extends StatelessWidget {
  const CustomWidgetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ( (context) => MoviePage(images: ''))));
        },
        child: Column(
          children: [
            Image.asset('assets/images/Rectangle 187 (1).png'),
          ],
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
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ( (context) => MoviePage(images: '') )));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Rectangle 187.png'),
            SizedBox(
              height: 10,
            ),
            Text('Los miserables' , style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),)
          ],
        ),
      ),
    );
  }
}