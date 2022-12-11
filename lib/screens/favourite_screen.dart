import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: Text('Favourite screen'),),
      body: ListView.builder(itemBuilder: (ctx,index){
        return ListTile(
          leading: CircleAvatar(child: Text('${index+1}'),),
          title: Text('Favourite demo'),
        );
      },
      itemCount: 10,),
    );
  }
}
