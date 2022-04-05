class TeamModel{
  static List<Team> data =[];
}

class Team{
  late String fullName;
  late String flag;

  Team({required this.fullName,required this.flag});

  factory Team.fromMap(Map<String,dynamic>map){
    return Team(
      fullName: map["fullName"],
      flag:map["flag"],
    );
  }

  toMap()=>{
    "fullName":fullName,
    "flag":flag,

  };


}
