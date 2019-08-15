class User {
  final String userId;
  final String token;

  User({this.userId, this.token});

  User.fromJson(Map<String, dynamic> json)
    : userId = json["userId"],
      token = json["token"];
}

// class ApiServiceUser {
//   final url = "http://localhost:3000/";

//   Future<User> register(body) async {
//     return http.post(url, body: body).then(http.Response response) {
//         final int statusCode = response.statusCode;

//         if (statusCode < 200 || statusCode > 400 || json == null) {
//           throw new Exception("Error while fetching data");
//         }
//         return Post.fromJson(json.decode(response.body));
//     };  
//   }
// }