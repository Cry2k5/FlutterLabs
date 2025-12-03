import 'package:flutter/material.dart';

import '../Model/Question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final tickIcon = const Icon(Icons.check_circle, color: Color(0xFF4CAF50), size: 30);
  final crossIcon = const Icon(Icons.cancel, color: Color(0xFFFF5252), size: 30);
  int count = 0;
  //List of Icons which is added to the bottom of the screen
  List<Icon> iconsList = [];

  final List<Question> questionsList = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called "Backrub".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF6A11CB),
                Color(0xFF2575FC),
              ],
            ),
          ),
          child: _body(),
        ),
      ),
    );
  }

  _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Progress indicator
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question ${count + 1}/${questionsList.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Score: ${iconsList.where((icon) => icon == tickIcon).length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              LinearProgressIndicator(
                value: (count + 1) / questionsList.length,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 6,
              ),
            ],
          ),
        ),

        // Question
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Text(
                  questionsList[count].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black38,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        // Buttons and icons
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // True Button
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF56AB2F), Color(0xFFA8E063)],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF56AB2F).withOpacity(0.5),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'TRUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    _checkAnswer(true);
                  },
                ),
              ),

              SizedBox(height: 15),

              // False Button
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFEB3349), Color(0xFFF45C43)],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFEB3349).withOpacity(0.5),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'FALSE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    _checkAnswer(false);
                  },
                ),
              ),

              SizedBox(height: 20),

              // Icons row
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  children: iconsList,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _checkAnswer(selectedAnswer) {
    if (selectedAnswer == questionsList[count].correctAnswer) {
      //Correct answer

      setState(() {
        iconsList.add(tickIcon);

        // Check if don't cross list size limit which will result in error
        if (count < questionsList.length - 1) count++;
      });
    } else {
      //Incorrect answer
      setState(() {
        iconsList.add(crossIcon);

        // Check if don't cross list size limit which will result in error
        if (count < questionsList.length - 1) count++;
      });
    }
  }
}