import 'package:flutter/material.dart';

class KediSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Kedilerin Konuşma Dili Çözülüyor!"),
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
                        
                        'https://i.imgur.com/GySiQn7h.jpg',
                      ),
                      
                      fit: BoxFit.fill,
                    
                    ),
                  ),
                ),
                SizedBox(height:30),
                Text("Bilim insanları tarafından yapılan son araştırmalar, kedilerin insanlarla iletişim kurmak için özel bir yöntem geliştirdiğini kanıtladı. 'Yavaş göz kırpma' (slow blink) adı verilen bu hareketin, kediler dünyasında 'Seni seviyorum' ve 'Sana güveniyorum' anlamına geldiği ortaya çıktı.",
                 textAlign:TextAlign.center,
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