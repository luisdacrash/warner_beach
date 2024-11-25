import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warner_beach/screens/home_screen.dart';

class LoadScreen extends StatelessWidget {

  static var name = "load_screen";

  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return const Expanded(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Loading',
        home: SingleChildScrollView(
          child: Stack(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      FadeInImage(
                        placeholder: AssetImage("assets/images/loading_image2.png"),
                        image: AssetImage("assets/images/loading_image2.png"),
                      ),
                    ],
                  ),
                ),
              ),
              Center(child: Loading()),
              
              
            ],
          ),
        ),
      ),
    );
    }
  }


class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
      loadNextPage(context);

      return Column(
        children:[
          const SizedBox(
            height: 500,
          ),
          CircularProgressIndicator(color: Colors.lightBlue[900],backgroundColor: Colors.amber,),
          
          
        ],
      );
  
  }

  Future loadNextPage(BuildContext context) async {

    await Future.delayed(const Duration(seconds: 3));
    
    context.goNamed(HomeScreen.name);
  }
}