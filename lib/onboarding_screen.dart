import 'package:flutter/material.dart';
import 'package:haber_uygulamasi/widgets/onboarding_c.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
 class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen>createState() => _OnboardingScreenState();
  
 }
 class _OnboardingScreenState extends State<OnboardingScreen>{
   final PageController _pageController=PageController(initialPage: 0);

  
  
  @override 
  Widget build(BuildContext context){
    List<Widget>_onBoardingPages = 
  [
  OnboardingC(
    image: "assets/images/on1.png",
    title: "Hoşgeldiniz",
    description: "Dünyada ne olup bittiğini anlamak için sayfalarca okumana gerek yok. En hızlı özetler burada.",
    buttonText: "Atla",
    onPressed: (){
      
      _pageController.animateToPage(1, duration: Durations.long1, curve: Curves.linear,
      );
    },
    ),
     OnboardingC(
    image: "assets/images/on2.png",
    title: "Senin Akışın,Senin Kuralların",
    description: "Sadece sevdiğin konular; ister teknoloji, ister oyun, ister spor. Gereksiz kalabalıktan kurtul.",
    buttonText: "Atla",
    onPressed: (){
      _pageController.animateToPage(2, duration: Durations.long1, curve: Curves.linear,
      );
    },
    ),
     OnboardingC(
    image: "assets/images/on3.png",
    title: "Her Şey Hazır!",
    description: "En güncel haberler ve sana özel içerikler parmaklarının ucunda. Şimdi dünyayı keşfetme zamanı.",
    buttonText: "Başla",
    onPressed: (){
      Navigator.pushReplacementNamed(context, "/HomePage");

    },
    ),
   
  ];
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: PageView(controller: _pageController,
            children: _onBoardingPages,
          
            )),
            SmoothPageIndicator(controller: _pageController, count: _onBoardingPages.length,
            effect: ExpandingDotsEffect(activeDotColor: Theme.of(context).colorScheme.primary,
            dotColor: Theme.of(context).colorScheme.secondary,
            
            ),
            onDotClicked: (index){
              _pageController.animateToPage(
                index,
                duration: Durations.long1,
                curve: Curves.bounceInOut,

              );
            },
            ),
          ],
        ),
      ));
  }
 }
  
 


 
 
 