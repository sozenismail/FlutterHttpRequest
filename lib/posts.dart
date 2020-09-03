import 'package:api_jsonplaceholder/http_service.dart';
import 'package:api_jsonplaceholder/post_detail.dart';
import 'package:api_jsonplaceholder/post_model.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  int sayi = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postlar"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((Post post) => ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.id.toString()),
                      onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => PostDetail(post: post)),
                          )))
                  .toList(),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
