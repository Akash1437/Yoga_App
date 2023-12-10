import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  //const CustomAppBar({Key? key}) : super(key: key);

  AnimationController animationController;
 Animation colorsTween, homeTween, yogaTween,iconTween,drawerTween;
 Function()? onPressed;

 CustomAppBar({
    required this.animationController,
    required this.colorsTween,
    required this.homeTween,
    required this.yogaTween,
    required this.iconTween,
    required this.drawerTween,
    required this.onPressed,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context,child)=>AppBar(
          leading: IconButton(
            icon:Icon(Icons.dehaze,
           color: drawerTween.value,
          ),
            onPressed: onPressed,

          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text("Home ", style: TextStyle(
                color: homeTween.value,
                fontWeight: FontWeight.bold,
                fontSize:20,
              ),),
              Text("Yoga", style: TextStyle(
                color: yogaTween.value,
                fontWeight: FontWeight.bold,
                fontSize:20,
              ), ),
            ],
          ),
          actions: [
            Icon(Icons.notifications, color: iconTween.value,),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
