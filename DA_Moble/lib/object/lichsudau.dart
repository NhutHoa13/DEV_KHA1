class HistoryObject{
  final int id;
  final String name;
  final String score;
  final String picture;
  HistoryObject({
    required this.id,
    required this.name,
    required this.score,
    
    required this.picture
  });

  HistoryObject.fromJson(Map<String,dynamic> res):
  id = res['id'],
  name = res['name'],
  score = res['score'],
  picture =res['picture'];
  
  Map<String, Object?> toJson(){
    return {
      'id':id,
      'name':name,
      'emai':score,
      'picture':picture,
    };
  }
}