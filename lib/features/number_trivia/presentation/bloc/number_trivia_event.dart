part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaEvent extends Equatable {
  @override
  final List<dynamic> props;

  NumberTriviaEvent([this.props = const <dynamic>[]]);
}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  final String numberString;

  GetTriviaForConcreteNumber(this.numberString) : super([numberString]);
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}
