// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class DataModel {}

class ErrorModel extends DataModel {
  String error;
  ErrorModel({
    required this.error,
  });
}

class ExaptionModel extends DataModel {
  String exaption;
  ExaptionModel({
    required this.exaption,
  });
}
