import 'package:untitled/23_12_18/exam/exam5/post.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager(this._postRepository);

  Future<List<Post>> getPosts() async {
    return await _postRepository.getPosts();
  }

  Future<void> addPost(Post post) async {
    await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    await _postRepository.updatePost(post);
  }

}


abstract interface class PostRepository {
  Future<List<Post>> getPosts();

  Future<void> addPost(Post post);

  Future<void> deletePost(Post post);

  Future<void> updatePost(Post post);
}
