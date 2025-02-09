import 'package:flutter/material.dart';

class QuizPageProvider with ChangeNotifier {

  int? totalPageCount;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  bool _isFinished = false;

  bool get isFinished => _isFinished;

  set isFinished(bool newVal) {
    _isFinished = newVal;
    notifyListeners();
  }

  void previousQuiz() {
    _currentIndex--;
    notifyListeners();
  }

  void nextQuiz() {
    _currentIndex++;
    notifyListeners();
  }

  static final QuizPageProvider _shared =
      QuizPageProvider._sharedInstance();
  QuizPageProvider._sharedInstance();
  factory QuizPageProvider() => _shared;
}