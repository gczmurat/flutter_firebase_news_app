class FirebaseCustomException implements Exception{
  late final String description;

  @override
  String toString(){
    return '$this $description';
  }
}