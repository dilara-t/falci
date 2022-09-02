import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  int a=0;
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  void randomlyask(){
    a= Random().nextInt(5)+1;
    String ask=yanitlar[a];
  }
  void randomlypara(){
    a=Random().nextInt(4)+6;
    String ask=yanitlar[a];
  }
  void randomlytavsiye(){
    a=Random().nextInt(4)+11;
    String ask=yanitlar[a];
  }


  Widget build(BuildContext buildContext){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('GÜNÜN FALI',
          style: TextStyle(
              color: Colors.white
          ),),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/falci.png',
            width: 130,),
            SizedBox(
              height: 5,
            ),
            FlatButton(
              highlightColor: Colors.purpleAccent,
              splashColor: Colors.purpleAccent,
              onPressed: (){
                setState(
                    (){
                      a=0;
                      randomlyask();

                    }
                );

              },
              child: Card(
                  margin:EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 5,
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                       SizedBox(
                         width: 20,
                       ),
                       Text('AŞK DURUMU',
                       style: TextStyle(
                         color: Colors.red,
                       )),
                      ],
                    ),
                  ),
                ),
            ),
            SizedBox(
              width: 20,
            ),
            FlatButton(
              splashColor: Colors.purpleAccent,
              highlightColor: Colors.purpleAccent,
              onPressed: (){
                setState(
                        (){
                          a=0;
                      randomlypara();

                    }
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                          Icons.shopping_cart,
                          color:Colors.green
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('PARA DURUMU',
                      style: TextStyle(
                        color:Colors.green,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            FlatButton(
              highlightColor: Colors.purpleAccent,
              splashColor: Colors.purpleAccent,
              onPressed: (){
                setState(
                        (){
                          a=0;
                      randomlytavsiye();

                    }
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5
                ),
                child:Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_vintage,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('GÜNLÜK TAVSİYE',
                      style:TextStyle(color:Colors.blueAccent))
                    ],
                  ),
                )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(
                horizontal:30
              ),
              child: Text(
                yanitlar[a],
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}