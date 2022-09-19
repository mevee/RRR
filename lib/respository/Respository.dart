import 'package:rnr/data/models/resposne/post.dart';

import '../data/models/resposne/login.dart';

abstract class Repository {
  Future<Login> loginWithEmailAndPassword(String email,Stream passeord);
  Future<List<Post>?> getPost();
}
