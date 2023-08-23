class Course {
  String? courseId;
  String? name;
  String? imageUrl;
  String? type;

  Course({this.courseId, this.name, this.imageUrl, this.type});

  Course.fromJson(Map<String, dynamic> json) {
    courseId = json['course_id'];
    name = json['name'];
    imageUrl = json['image_url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['course_id'] = courseId;
    data['name'] = name;
    data['image_url'] = imageUrl;
    data['type'] = type;
    return data;
  }
}
