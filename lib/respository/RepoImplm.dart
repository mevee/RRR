import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:rnr/data/FailureExceptions.dart';
import 'package:rnr/data/models/resposne/post.dart';
import 'package:rnr/data/models/resposne/login.dart';
import 'package:rnr/data/pref/appPreference.dart';
import 'package:rnr/respository/Respository.dart';
import 'package:http/http.dart' as http;

class RepoImplement extends Repository {
  String tag = 'RepoImplement';

  String baseUrl = "https://jsonplaceholder.typicode.com/";
  dynamic header = {'API_KEY': '000000000'};

  @override
  Future<List<Post>?> getPost() async {
    try {
      final response =
          await http.get(Uri.parse('${baseUrl}posts'), headers: header);
      print('$tag REQUEST :: ${response.request}');
      print('$tag RESPOSNE :: ${response.body}');
      await Future.delayed(const Duration(seconds: 5));
      var responseBody = jsonDecode(response.body.toString());
      List<Post> postList = [];
      if (response.statusCode == 200) {
        for (Map<String, dynamic> i in responseBody) {
          postList.add(Post.fromJson(i));
        }
      } else {}

      return postList;
    } on SocketException {
      throw Failure(100, "No Internet connection");
    } on HttpException {
      throw Failure(100, "Someting went wrong");
    } on FormatException {
      throw Failure(100, "Bad Response");
    }
  }

  Future<List<Post>?> getImages() async {
    // var userData = await AppPref().getUser();

    // print('$tag userData :: ${userData}');

    try {
      final response = await http
          .get(Uri.parse('${baseUrl}photos'))
          .timeout(Duration(seconds: 4));

      print('$tag REQUEST :: ${response.request}');
      print('$tag RESPOSNE :: ${response.body}');
      await Future.delayed(Duration(seconds: 4));
      var responseBody = jsonDecode(response.body.toString());
      List<Post> postList = [];
      if (response.statusCode == 200) {
        for (Map<String, dynamic> i in responseBody) {
          postList.add(Post.fromJson(i));
        }
      }
      return postList;
    } on TimeoutException {
      throw Failure(
          100, "Unable to reach server check you internet connection");
    } on SocketException {
      throw Failure(100, "No Internet connection");
    } on HttpException {
      throw Failure(100, "Someting went wrong");
    } on FormatException {
      throw Failure(100, "Bad Response");
    }
  }

  @override
  Future<Login> loginWithEmailAndPassword(String email, Stream passeord) async {
    try {
      await Future.delayed(Duration(seconds: 4));
      final loginData = Login(
          userId: 100,
          id: 100,
          title: "Vikesh",
          url:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNApiwx11Y9qlKbxwWLg8B1a3gXkU2skSa-q0LAaD9JGzwsWoWAtIG_TP5Sihnv1ohpg&usqp=CAU');
    } on TimeoutException {
      throw Failure(
          100, "Unable to reach server check you internet connection");
    } on SocketException {
      throw Failure(100, "No Internet connection");
    } on HttpException {
      throw Failure(100, "Someting went wrong");
    } on FormatException {
      throw Failure(100, "Bad Response");
    }
    throw UnimplementedError();
  }
}
