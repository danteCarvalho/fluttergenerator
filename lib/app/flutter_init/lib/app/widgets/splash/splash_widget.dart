  
import 'package:flutter/material.dart';
import 'package:flutterutils/flutterutils.dart';


class SplashWidget extends StatefulWidget {

  const SplashWidget({Key? key}) : super(key: key);

  @override
  SplashWidgetState createState() => SplashWidgetState();
}
class SplashWidgetState extends State<SplashWidget> {

 @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );

    var bg = Image.asset(
      'assets/background.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
    var lado = porcentagemMenorLado(context, 30);

    imagem(String asset) {
      var image = Container(
        margin: EdgeInsets.only(bottom: porcentagemMenorLado(context, 5)),
        child: Image.asset(
          asset,
          width: lado,
        ),
      );
      return image;
    }

    var imageLogo = imagem('assets/icone.png');


    columnWidgets.add(imageLogo);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [bg, column],
      ),
    );
  }
}  
  
  