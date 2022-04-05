class ScheduleModel{
  static List<Schedule> data =[];

}

class Schedule {
  late String tarekh;
  late String teamOne;
  late String teamTwo;
  late String flagOne;
  late String flagTwo;
  late String venue;
  late String time;

  Schedule({
      required this.tarekh,
      required this.teamOne,
      required this.teamTwo,
      required this.flagOne,
      required this.flagTwo,
      required this.venue,
      required this.time});


  factory Schedule.fromMap(Map<String,dynamic>map){
    return Schedule(
        tarekh: map["tarekh"],
        teamOne:map["teamOne"],
        teamTwo:map["teamTwo"],
        flagOne:map["flagOne"],
        flagTwo:map["flagTwo"],
        venue:map["venue"],
        time:map["time"],
    );
  }

  toMap()=>{
    "tarekh":tarekh,
    "teamOne":teamOne,
    "teamTwo":teamTwo,
    "flagOne":flagOne,
    "flagTwo":flagTwo,
    "venue":venue,
    "time":time,
  };
}


