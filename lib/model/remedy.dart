class remedy {
  String RemedyName;
  String subtitle;
  String Remedydescription;
  String manufacture;
  String validadeDate;
  int? grams;
  

  remedy({
    required this.RemedyName,
    required this.subtitle,
    required this.Remedydescription,
    required this.manufacture,
    required this.validadeDate,
    this.grams,
  });
}