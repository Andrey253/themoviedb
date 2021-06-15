
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  _MovieListWidgetState createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black.withOpacity(0.2)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0,2),
                blurRadius: 8,
              )
            ]
        ),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Image(image: AssetImage('images/movie.jpg')),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('Mortal Comba',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 5,),
                    Text('April 7, 2021',
                      style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 20,),
                    Text('2036 год. Уже несколько лет на Украине идёт гражданская война, а военные силы США выполняют роль миротворцев. Не подчинившись прямому приказу капитана, оператор дрона лейтенант Харп предстаёт перед комиссией, но отправляется не под трибунал, а на спецзадание. Теперь Харп находится в подчинении у капитана Лео, который на самом деле является секретной разработкой — высокотехнологичным андроидом, внешне совершенно неотличимым от обычного человека. Вдвоём они отправляются в приграничную с Россией зону, чтобы найти военного преступника Виктора Коваля и не позволить ему завладеть кодами запуска ядерных ракет.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
        ),
      );
    });
  }
}
