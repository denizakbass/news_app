import 'package:flutter/material.dart';
class OnboardingC extends StatelessWidget{
 final String image, title,description,buttonText;
 final Function onPressed ;

 const OnboardingC({
  super.key,
  required this.image,
  required this.title,
  required this.description,
  required this.buttonText,
  required this.onPressed,

 });
  @override 
  Widget build (BuildContext context){
    return Container(
    height:MediaQuery.sizeOf(context).height*0.20,
    width:MediaQuery.sizeOf(context).width,
    child:Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
    [
         Padding(
           padding: const EdgeInsets.all(
            10.0,
            ),
           child: Image.asset(
            image,
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.contain,
           ),
         ),
         Column(children: [Text(
          
         title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
            
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            ),
          ),
          ],
          ),
          MaterialButton(
            minWidth: 300,
            onPressed: () => onPressed(),
            color:Theme.of(context).colorScheme.primary,
            child:Text(buttonText,style: const TextStyle(
              color: Colors.white,
            ),)
            )
    ],
    
    ),
    );
  }
}