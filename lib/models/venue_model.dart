class VenueModel{
  static List<Venue> data =[];

}

class Venue{
  late String city;
  late String stadium;
  late String image;


  Venue({
    required this.city,
    required this.stadium,
    required this.image,
  });


  factory Venue.fromMap(Map<String,dynamic>map){
    return Venue(
      city: map["city"],
      stadium:map["stadium"],
      image:map["image"],
    );
  }

  toMap()=>{
    "city":city,
    "stadium":stadium,
    "image":image,

  };
}


