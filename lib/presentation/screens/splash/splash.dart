

part of 'splash_imports.dart';

// @RoutePage()

class Splash extends StatefulWidget {

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override

  void initState() {
    moveToOnBoard();
    super.initState();
  }

   moveToOnBoard() async{
    await Future.delayed(const Duration(seconds: 3), (){
      // AutoRouter.of(context).push(const OnBoardRoute());  
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 

      AppBar(
        title: const Text('Sahitya'),
      ),

    );
  }
}

