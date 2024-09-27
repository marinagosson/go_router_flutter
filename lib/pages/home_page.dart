    import 'package:flutter/material.dart';
    import 'package:go_router/go_router.dart';

    class HomePage extends StatelessWidget {
      const HomePage({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                          title: Text('Home'),),  
                body: ListView(
                  children: [
                      ListTile(title: Text('Item 1'), onTap: (){
                        context.push('/details/1');
                      },),
                      ListTile(title: Text('Item 2'), onTap: (){
                        context.push('/details/2');
                      },),
                      ListTile(title: Text('Item 3'), onTap: (){
                        context.push('/details/3');
                      },),
                    ],),);
      }
    }