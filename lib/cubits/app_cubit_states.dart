import 'package:equatable/equatable.dart';
import 'package:travel_app/model/models.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModels> places;

  @override
  List<Object?> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModels place;

  @override
  List<Object?> get props => [place];
}
