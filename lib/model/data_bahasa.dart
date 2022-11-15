class MyData {
  String? previous;
  String? next;
  int? status;
  List<Results>? results;

  MyData.fromJson(Map<String, dynamic> json) {
    previous = json['previous'];
    next = json['next'];
    status = json['status'];
    if (json['result'] != null) {
      results = <Results>[];
      json['result'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }
}

class Results {
  String? no;
  String? bahasa;

  Results.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    bahasa = json['bahasa'];
  }
}
