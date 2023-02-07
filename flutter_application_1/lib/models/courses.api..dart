import 'dart:convert';





class Course{
//   static Future<List<Course>> getCourse() async{
//   var uri = Uri.https('futursity.com/course/api/top_courses')
// }

// final Response = await http.get(uri, headers: {

//      	"x-futuresityapi-host": "futursity.com/course/api/top_courses",
//  	"x-rapidapi-key": "38ca951abcmsh31f3984f18df97dp1ebcebjsn5a3a532c818f",
//  	"useQueryString": "true"
//   });

//   Map data = jsonDecode(Response.body);
//    List _temp = [];

//    for(var i in data['feed']){
//      _temp.add(i['content']['details']);
//    }

//    return Course.FromSnapshot(_temp);
// }

Future<List<Course>> fetchData() async {
  var responses = await Future.wait(
    var list = ["https:futursity.com/course/api/top_courses",
    
                "https:futursity.com/course/api/categories",]
    );
}
  
  

    Map data = jsonDecode(http.Response.body);
    List _temp = [];
       for(var i in data['feed']){
      _temp.add(i['content']['details']);
   }
  return <Course>[
    ..._getArticlesFromResponse(responses[0])
    ..._getArticlesFromResponse(responses[1])
  

  static getCourse() {}];
}

List<Course> _getArticlesFromResponse(http.Response response) {
  return [
    if (response.statusCode == 200)
      for (var i in json.decode(response.body)['items'])
        Course.fromJson(i),
  ];
}

