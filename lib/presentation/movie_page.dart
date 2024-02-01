import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business%20logic/cubit/movie_cubit.dart';
import 'package:movie_app/business%20logic/cubit/movie_state.dart';
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
        body: BlocProvider(
          create: (_) => MovieCubit(),
          child: BlocConsumer<MovieCubit , MovieState>(
            listener: (context, state) {
              if(state is MovieIsLoading){
              Center(
                child: CircularProgressIndicator(),
              );
            }
            },
            builder: (context, state) {
              return SingleChildScrollView(
            child: Stack(
              children: [
                state is MovieIsLoading ? CircularProgressIndicator() :
                Center(child: Image.asset(MovieCubit.get(context).movieModel!.results![0].posterPath!)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomePage())));
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 300,
                      ),
                      state is MovieIsLoading ? CircularProgressIndicator() :
                      Image.asset(MovieCubit.get(context).movieModel!.results![0].originalTitle!),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '1H 52MIN',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          state is MovieIsLoading ? CircularProgressIndicator() :
                          Text(
                            MovieCubit.get(context).movieModel!.results![0].adult!.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          state is MovieIsLoading ? CircularProgressIndicator() :
                          Text(
                            MovieCubit.get(context).movieModel!.results![0].releaseDate!,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4K UHD',
                            style: TextStyle(
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              WatchListPage())));
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
                      state is MovieIsLoading ? CircularProgressIndicator() :
                      Text(
                        MovieCubit.get(context).movieModel!.results![0].overview!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      state is MovieIsLoading ? CircularProgressIndicator() :
                      Text(
                        MovieCubit.get(context).movieModel!.results![0].overview!,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      state is MovieIsLoading ? CircularProgressIndicator() :
                      Text(
                        MovieCubit.get(context).movieModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: MovieCubit.get(context).movieModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetColumn();
                            })),
                      ),
                      state is MovieIsLoading ? CircularProgressIndicator() :
                      Text(
                        MovieCubit.get(context).movieModel!.results![0].title!,
                        style: TextStyle(
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
                            itemCount: MovieCubit.get(context).movieModel!.results![0].posterPath!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CustomWidgetImage(image: images[index]);
                            })),
                      ),
                    ],
                  ),
                )
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

class CustomWidgetImage extends StatelessWidget {
  CustomWidgetImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(width: 130, height: 220, child: Image.asset(image)),
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
              child: Image.asset('assets/images/Rectangle 197.png')),
          SizedBox(
            height: 10,
          ),
          Text(
            MovieCubit.get(context).movieModel!.results![0].originalTitle!,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
          Row(
            children: [
              Text(
                MovieCubit.get(context).movieModel!.results![0].releaseDate!,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                MovieCubit.get(context).movieModel!.results![0].adult!.toString(),
                style: TextStyle(
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
