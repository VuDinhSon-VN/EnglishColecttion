class ConvertJson {
  String word;
  List<String> example;
  List<String> traslate;

  ConvertJson({this.word, this.example, this.traslate});

  ConvertJson.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    example = json['example'].cast<String>();
    traslate = json['traslate'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['word'] = this.word;
    data['example'] = this.example;
    data['traslate'] = this.traslate;
    return data;
  }
}