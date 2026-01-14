import 'package:flutter/material.dart';

class KitapSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Haftanın En Beğenilen Kitapları!"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), 
      ),
      
      body: Center(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
               
               Container(
                  
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [BoxShadow(color: const Color(0xFF000000),blurRadius: 10,offset:const Offset(0,3))],
                    image: const DecorationImage(
                      image: NetworkImage(
                        
                        'https://play-lh.googleusercontent.com/3H-lJSkBTe6SGsXFbIra9gqr7dosfbQiIZTWtjMviiUbZ8R4LftUx1kDjFSk4uh4-Q=w7680-h4320',
                      ),
                      
                      fit: BoxFit.fill,
                    
                    ),
                  ),
                ),
                SizedBox(height:30),
                Text('Bazen bir kitabın kapağını açmak, bambaşka bir dünyanın kapısını aralamaktır. Bu hafta listemizin zirvesinde, hayal gücünüzü zorlayacak ve hayata bakışınızı değiştirecek üç dev eser var:'
                """
                        
                          1. "Simyacı" – Paulo Coelho
                          2."Gece Yarısı Kütüphanesi" – Matt Haig
                         3."Küçük Prens" – Antoine de Saint-Exupéry
  """,
                 style: TextStyle(
                   fontWeight:FontWeight.bold,
                   fontStyle: FontStyle.italic,
                   
                 ),
                 
                )
                 
        
       
       
        
              ],
      ),
      ),
    );
    
  }
}