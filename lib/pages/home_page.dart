import 'package:allan/utils/ai_util.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(
                  colors: [AIColors.primaryColor1, AIColors.primaryColor2
                  ],begin: Alignment.topLeft, end: Alignment.bottomRight
          ),
          )
              .make(),
          AppBar(
            title: "AI Radio".text.xl4.bold.white.make()
            .shimmer(primaryColor: Vx.purple300, secondaryColor: Colors.white),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ).h(100)

        ],
      ),
    );
  }
}
