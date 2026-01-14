import 'package:flutter/material.dart';
import 'package:haber_uygulamasi/haber_kedi.dart';
import 'package:haber_uygulamasi/haber_kitap.dart';

void main() {
  runApp(const HaberSayfasi());
}

class HaberSayfasi extends StatelessWidget {
  const HaberSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "TRENDLER",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Gelecekte robotlar....',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                
                                                     
             
                Container(
                  
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(color: const Color(0xFF000000),blurRadius: 10,offset:const Offset(0,3))],
                    image: const DecorationImage(
                      image: NetworkImage(
                        
                        'https://img.pikbest.com/photo/20250104/artifical-intellegence-concept-based-robot_11337854.jpg!bw700',
                      ),
                      
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height:5),
                const Text("Teknoloji dünyası, insansı robotların artık sadece fabrikalarda değil, günlük ofis ortamlarında da çalışmaya başlayacağı günü bekliyor. Son yapılan testlerde, yeni nesil robotların karmaşık dosyalama işlemlerini yapabildiği ve insanlarla doğal dilde iletişim kurarak toplantı notları tutabildiği gözlemlendi.",
                style: TextStyle(
                     fontSize:15, 
                ),
                ),

                const SizedBox(height: 30),
                const Text(
                  'Bugünün Haberleri',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
                                ),
                                fit: BoxFit.cover,
                                
                              ),
                            ),
                            
                              

                            
                          ),
                          const SizedBox(height: 8),
                          
                          const Text(
                            'Kediler hakkında yeni bilgiler...',
                            style: TextStyle(fontStyle: FontStyle.italic,
                            fontSize: 20,
                            ),
                          ),
                          ElevatedButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>KediSayfasi()));
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  

                                );
                              },child:const Text("Daha fazlası için tıklayınız...",
                              style: TextStyle(color: Colors.black),

                            )),
                        ],
                      ),
                    ),
                    
                    const SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2019/08/09/06/08/library-4394440_1280.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Haftanın en iyi kitapları sizlerle..',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              ),
                          ),
                          ElevatedButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>KitapSayfasi()));
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  

                                );
                              },child:const Text("Daha fazlası için tıklayınız...",
                              style: TextStyle(color: Colors.black),),

                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
