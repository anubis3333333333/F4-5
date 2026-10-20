import "package:flutter/material.dart";
import "package:f4_5/styled_text.dart";

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
class GradientContainer extends StatelessWidget{
    final color color1;
    final color color2;
    final color color3;
    const GradientContainer(
        this.color1,
        this.color2,
        this.color3, {
        super.key,
        }
    );
    @override
    Widget build(BuildContext context) {
        return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [
                color1,
                color2,
                color3,
          ],
            begin: startAlignment,
            end: endAlignment,
        ),
      ),
        child: Center(
            child: StyledText(
            "Hello world!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
          ),
        ),
      ),
    );

  }

  
}