import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business%20logic/cubit/home_cubit.dart';
import 'package:movie_app/business%20logic/cubit/home_state.dart';
import 'package:movie_app/presentation/menu_page.dart';
import 'package:movie_app/presentation/movie_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: BlocProvider(
          create: (_) => HomeCubit()..getHome(),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              if(state is HomeIsLoading){
              Center(
                child: CircularProgressIndicator(),
              );
            }
            },
            builder: (context, state) {
              return SingleChildScrollView(
            child: Stack(
              children: [
                state is HomeIsLoading ? CircularProgressIndicator() :
                Center(child: Image.asset(HomeCubit.get(context).homeModel!.results![0].posterPath!.toString())),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MenuPage())));
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
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Center(
                      
                      child: Text(
                        
                        HomeCubit.get(context).homeModel!.results![0].originalTitle!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Center(
                      child: Text(
                        HomeCubit.get(context).homeModel!.results![0].overview!,
                        style: TextStyle(
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
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        HomeCubit.get(context).homeModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: HomeCubit.get(context).homeModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetColumn();
                            })),
                      ),
                    ),
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        HomeCubit.get(context).homeModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: HomeCubit.get(context).homeModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetContainer();
                            })),
                      ),
                    ),
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        HomeCubit.get(context).homeModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: HomeCubit.get(context).homeModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetImage();
                            })),
                      ),
                    ),
                    state is HomeIsLoading ? CircularProgressIndicator() :
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        HomeCubit.get(context).homeModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: HomeCubit.get(context).homeModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetRow();
                            })),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
            },
          )
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
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => MoviePage(images: ''))));
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
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => MoviePage(images: ''))));
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
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => MoviePage(images: ''))));
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
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => MoviePage(images: ''))));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Rectangle 187.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Los miserables',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
      ),
    );
  }
}
