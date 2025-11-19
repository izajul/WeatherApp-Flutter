class LocationModel {
  final String localityName;
  final String country;
  final double lat;
  final double lng;

  LocationModel({
    required this.localityName,
    required this.country,
    required this.lat,
    required this.lng,
  });

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      localityName: map['localityName'],
      country: map['country'],
      lat: map['lat'],
      lng: map['lng'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'localityName': localityName,
      'country': country,
      'lat': lat,
      'lng': lng,
    };
  }
}
