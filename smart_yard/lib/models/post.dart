class Post {
  // все поля являются private
  // это сделано для инкапсуляции данных
  final int _post_author;
  final int _pub_date;
  final String _post_title;
  final String _post_text;

  // создаем getters для наших полей
  // дабы только мы могли читать их
  int get userId => _post_author;
  int get id => _pub_date;
  String get title => _post_title;
  String get body => _post_text;

  // Dart позволяет создавать конструкторы с разными именами
  // В данном случае Post.fromJson(json) - это конструктор
  // здесь мы принимаем JSON объект поста и извлекаем его поля
  // обратите внимание, что dynamic переменная
  // может иметь разные типы: String, int, double и т.д.
  Post.fromJson(Map<String, dynamic> json) :
        this._post_author = json["post_author"],
        this._pub_date = json["pub_date"],
        this._post_title = json["post_title"],
        this._post_text = json["post_text"];
}

// PostList являются оберткой для массива постов
class PostList {
  final List<Post> posts = [];
  PostList.fromJson(List<dynamic> jsonItems) {
    for (var jsonItem in jsonItems) {
      posts.add(Post.fromJson(jsonItem));
    }
  }
}

// наше представление будет получать объекты
// этого класса и определять конкретный его
// подтип
abstract class PostResult {}

// указывает на успешный запрос
class PostResultSuccess extends PostResult {
  final PostList postList;
  PostResultSuccess(this.postList);
}

// произошла ошибка
class PostResultFailure extends PostResult {
  final String error;
  PostResultFailure(this.error);
}

// загрузка данных
class PostResultLoading extends PostResult {
  PostResultLoading();
}