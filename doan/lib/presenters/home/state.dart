part of 'bloc.dart';


abstract class State extends Equatable {
  const State();

  @override
  List<Object> get props => [];
}
class CoreInitial extends State {}
