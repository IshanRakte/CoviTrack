class Tcases{

  var cases;
  var deaths;
  var recovered;
  var todayCases;
  var todayDeaths;
  var todayRecovered;
  var critical;
  var affectedCountries;

  Tcases({this.cases,this.deaths,this.recovered,this.todayCases,this.todayDeaths,this.todayRecovered,this.critical,this.affectedCountries});

  factory Tcases.fromJson(final json){
    return Tcases(
      cases: json["cases"],
      deaths: json["deaths"],
      recovered: json["recovered"],
      todayCases: json["todayCases"],
      todayDeaths: json["todayDeaths"],
      todayRecovered: json["todayRecovered"],
      critical: json["critical"],
      affectedCountries: json["affectedCountries"],
    );
  } 

}