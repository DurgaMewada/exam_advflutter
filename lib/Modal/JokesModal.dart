class JokesModal{
  late String type,setup,punchline;
 // late int id;

  JokesModal({required this.punchline,required this.setup, required this.type});
  factory JokesModal.fromMap(Map m1)
  {
    return JokesModal( punchline: m1['punchline']??"", setup: m1['setup']?? "", type: m1['type']??"");
  }
}
