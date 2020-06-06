part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaState extends Equatable {
  @override
  final List<dynamic> props;

  NumberTriviaState([this.props = const <dynamic>[]]);
}

class Empty extends NumberTriviaState {}

class Loading extends NumberTriviaState {}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  Loaded({@required this.trivia});

  @override
  List get props => [trivia];
}

class Error extends NumberTriviaState {
  final String message;

  Error({@required this.message});

  @override
  List get props => [message];
}
