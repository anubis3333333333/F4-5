import "package:flutter/material.dart";
import "package:f4_5/styled_text.dart";

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
class GradientContainer extends StatelessWidget{
    var activeDiceImage = "assets/images/dice-1.png";
    final Color color1;
    final Color color2;
    final Color color3;
    GradientContainer(
        this.color1,
        this.color2,
        this.color3, {
        super.key,
        }
    );
    void rollDice(){
        activeDiceImage = "assets/images/dice-4.png";
        print("pic can changed!");
        
    }
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
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Image.asset(
                        activeDiceImage,
                        width: 300,
                    ),
                    const SizedBox(height:20),
                    TextButton(
                        onPressed: rollDice,
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.lime,
                            textStyle: const TextStyle(
                                fontSize: 30,

                            ),
                        ),
                        child: Text("Roll Dice!"),

                    ),
                ],
            ),
        ),
    );

  }

  
}

