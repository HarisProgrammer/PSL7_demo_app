class HistoryModel{

  static List<MatchHistory> data =[];
}

class MatchHistory{
  late String winner;
  late String runnerUp;
  late String host;
  late String winnerFlag;
  late String runnerUpFlag;
  late String year;

  MatchHistory({required this.winner,required this.runnerUp,required this.host,required this.winnerFlag,
    required this.runnerUpFlag,required this.year});

  factory MatchHistory.fromMap(Map<String,dynamic>map){
    return MatchHistory(
        winner: map["winner"],
        runnerUp: map["runnerUp"],
        host: map["host"],
        winnerFlag: map["winnerFlag"],
        runnerUpFlag: map["runnerUpFlag"],
        year: map["year"],
    );
  }

  toMap()=>{
    "winner":winner,
    "runnerUp":runnerUp,
    "host":host,
    "winnerFlag":winnerFlag,
    "runnerUpFlag":runnerUpFlag,
    "year":year,
  };


}

