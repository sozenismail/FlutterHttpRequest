import 'dart:convert';

import 'package:api_jsonplaceholder/post_model.dart';
import 'package:http/http.dart';


class HttpService{


  final String postUrl="https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>>getPosts() async{

    Response res=await get(postUrl);

    if(res.statusCode==200){
      List<dynamic> body=jsonDecode(res.body);

      List<Post> posts=body.map((dynamic item)=>Post.fromJson(item)).toList();

      return posts;

    }
    else{
      throw "Post bulunamadı!";
    }

  }




}
