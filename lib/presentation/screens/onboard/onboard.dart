
part of 'onboard_imports.dart';
//@RoutePage()
class OnBoard extends StatefulWidget {

  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OnBoard'),
      ),
    );
  }
}