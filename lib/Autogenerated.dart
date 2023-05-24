
class GetConnectors {
  bool? success;
  String? message;
  int? code;
  List<Body>? body;

  GetConnectors({this.success, this.message, this.code,  this.body,});

  GetConnectors.fromJson(Map<String, dynamic> json) {
    success = json['sucess'];
    message = json['message'];
    code = json['code'];

    if (json['body'] != null) {
      body = <Body>[];
      json['body'].forEach((v) {
        body!.add(new Body.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sucess'] = this.success;
    data['message'] = this.message;
    if (this.body != null) {
      data['body'] = this.body!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Body {
  int? id;
  String? name;
  int? status;


  Body({this.id, this.name, this.status });

  Body.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status =  json['status'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['status'] = this.status;

    return data;
  }
}


