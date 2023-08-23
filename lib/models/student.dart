class Student {
  String? name;
  String? studentId;

  Student({this.name, this.studentId});

  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    studentId = json['student_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['student_id'] = studentId;
    return data;
  }
}
