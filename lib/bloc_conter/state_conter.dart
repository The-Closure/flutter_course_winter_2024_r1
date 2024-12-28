// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class StateConter {
  int? conter;
  StateConter({
    this.conter,
  });
}

class InitState extends StateConter {
  InitState({required super.conter});
}

class LoadingState extends StateConter {
  LoadingState();
}

class AddToConterState extends StateConter {
  AddToConterState({required super.conter});
}

class RemoveFromConterState extends StateConter {
  RemoveFromConterState({required super.conter});
}
