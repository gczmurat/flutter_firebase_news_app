class FirebaseCustomException implements Exception{
  FirebaseCustomException(this.description);
  late final String description;

  @override
  String toString(){
    return '$this $description';
  }
}