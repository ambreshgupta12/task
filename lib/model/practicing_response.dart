class PracticingResponse {
  int response;
  List<Tours> tours;

  PracticingResponse({this.response, this.tours});

  PracticingResponse.fromJson(Map<String, dynamic> json) {
    response = json['Response'];
    if (json['Tours'] != null) {
      tours = new List<Tours>();
      json['Tours'].forEach((v) {
        tours.add(new Tours.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Response'] = this.response;
    if (this.tours != null) {
      data['Tours'] = this.tours.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tours {
  String content;
  String description;
  double destinationLat;
  double destinationLong;
  int disliked;
  String distance;
  String duration;
  String language;
  int liked;
  double rating;
  double sourceLat;
  double sourceLong;
  String title;
  int tourId;
  String type;

  Tours(
      {this.content,
        this.description,
        this.destinationLat,
        this.destinationLong,
        this.disliked,
        this.distance,
        this.duration,
        this.language,
        this.liked,
        this.rating,
        this.sourceLat,
        this.sourceLong,
        this.title,
        this.tourId,
        this.type});

  Tours.fromJson(Map<String, dynamic> json) {
    content = json['Content'];
    description = json['Description'];
    destinationLat = json['Destination_lat'];
    destinationLong = json['Destination_long'];
    disliked = json['Disliked'];
    distance = json['Distance'];
    duration = json['Duration'];
    language = json['Language'];
    liked = json['Liked'];
    rating = json['Rating'];
    sourceLat = json['Source_lat'];
    sourceLong = json['Source_long'];
    title = json['Title'];
    tourId = json['Tour_id'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Content'] = this.content;
    data['Description'] = this.description;
    data['Destination_lat'] = this.destinationLat;
    data['Destination_long'] = this.destinationLong;
    data['Disliked'] = this.disliked;
    data['Distance'] = this.distance;
    data['Duration'] = this.duration;
    data['Language'] = this.language;
    data['Liked'] = this.liked;
    data['Rating'] = this.rating;
    data['Source_lat'] = this.sourceLat;
    data['Source_long'] = this.sourceLong;
    data['Title'] = this.title;
    data['Tour_id'] = this.tourId;
    data['Type'] = this.type;
    return data;
  }
}