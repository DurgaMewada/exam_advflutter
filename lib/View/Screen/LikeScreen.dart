import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Modal/JokesModal.dart';
import '../../Provider/JokesProvider.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            leading: Icon(Icons.menu),
            centerTitle: true,
            title: Text(
              'Likes Screen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/image/background.jpg',
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: FutureBuilder(
              future: Provider.of<JokesProvider>(context, listen: false).setData(
                  Provider
                      .of<JokesProvider>(context, listen: true)
                      .change), builder: (context, snapshot) {
              if (snapshot.hasData) {
                JokesModal? joke = snapshot.data;
                return ListView.builder(itemCount: 1,
                  itemBuilder: (context, index) =>
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 150,),
                            Card(
                              color: Colors.grey.shade50,
                              child: Container(
                                height: 200,
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Text(joke!.setup, style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18
                                      ),),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text('Puncline :- ${joke.punchline}'),
                                      Text('Type :- ${joke!.type}'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              color:Colors.grey.shade50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:Icon(color: Colors.red,
                                  Icons.favorite, size: 30,)
                              ),
                            ),
                          ],
                        ),
                      ),
                );
              }
              else if (snapshot.hasError) {
                return Center(child: Text('${snapshot.error}'));
              }
              else {
                return Center(child: CircularProgressIndicator());
              }
            },),
          ),
        );
  }
}
