import 'package:api_jsonplaceholder/post_model.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.id.toString()),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex:0,

           child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(post.id.toString()),
                )),),

            Expanded(
              flex:0,

              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(post.body),
                  )),),
          ],
        ),
      ),

    );
  }
}

