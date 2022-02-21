class GetFactResp {
  String? fact;
  int? length;

  GetFactResp({this.fact, this.length});

  GetFactResp.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fact != null) {
      data['fact'] = this.fact;
    }
    if (this.length != null) {
      data['length'] = this.length;
    }
    return data;
  }
}
