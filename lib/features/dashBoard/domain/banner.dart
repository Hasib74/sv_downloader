class Banner {
  String? url;
  String? title;
  String? details;

  Banner({
    this.url,
    this.title,
    this.details,
  });

  Banner.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    details = json['details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['title'] = title;
    data['details'] = details;
    return data;
  }
}
