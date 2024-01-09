import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/game2.dart';
import 'package:flutter_application_1/main.dart';
import 'package:gap/gap.dart';
import 'package:simple_shadow/simple_shadow.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({super.key});

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

var objectData = [
  {
    'name': 'BAG',
    'imgName': 'bagg.png',
    'image': 'bag.png',
    'description':
        'A bag is like a big pocket with handles. It holds your toys, snacks, and things you need when you go out.',
    's1':
        'A bag is like a big pocket. It holds your toys, snacks, and school stuff.',
    's2':
        'Put your books and pencils in the bag for school. It is easy to carry on your back.',
    's3':
        'Your bag is like a helper, keeping all your important things safe and ready to use.',
  },
  {
    'name': 'BOOK',
    'imgName': 'Book.png',
    'image': 'libro.png',
    'description':
        'Books are like special friends made of paper. They have stories and pictures that you can read and enjoy.',
    's1':
        'Books are like friends with stories inside. They teach us and make our minds happy.',
    's2':
        'You can read books about animals, space, or adventures. They help us learn new words and have fun.',
    's3':
        'Books have pictures and words that tell a story. We can read them alone or with friends.',
  },
  {
    'name': 'CHAIR',
    'imgName': 'Chair.png',
    'image': 'upuan.png',
    'description':
        'A chair is a special seat for sitting. It keeps you comfy when you read, eat, or play.',
    's1': 'A chair is for sitting. It is like a comfy seat for you.',
    's2':
        'Sit on a chair when you read, draw, or eat. It keeps you cozy and relaxed.',
    's3':
        'Chairs come in different colors. Pick one you like and make it your special seat.',
  },
  {
    'name': 'RULER',
    'imgName': 'Ruler.png',
    'image': 'line.png',
    'description':
        'A ruler is a long, straight tool with numbers. It helps you draw straight lines and measure things.',
    's1':
        'A ruler is a long, straight tool. It helps us draw lines that are not wiggly.',
    's2':
        'Use the ruler to measure things like how long your toy is. It is good for making neat drawings.',
    's3':
        'The ruler is flat and has numbers. It is great for making shapes and keeping everything in order.',
  },
  {
    'name': 'PENCIL',
    'imgName': 'Pencil.png',
    'image': 'lapis.png',
    'description':
        'A pencil is a writing tool with a point. You use it for drawing and writing, and you can sharpen it when the point gets dull.',
    's1':
        'A pencil is a writing tool with a point. It is good for drawing and making notes.',
    's2':
        'Sharpen the pencil to keep the point sharp. It helps you write neatly.',
    's3':
        'Pencils come in different colors. Use them for homework or your special drawings.',
  },
  {
    'name': 'NOTEBOOK',
    'imgName': 'Notebook.png',
    'image': 'sulat.png',
    'description':
        'A notebook is like your personal paper book. You can write in it, draw pictures, and keep all your thoughts in one place.',
    's1':
        'A notebook is a book for writing and drawing. It is like your special paper place.',
    's2':
        'You can have different notebooks for different things, like stories, math, or doodles.',
    's3':
        'Write your ideas, draw pictures, or do homework in your notebook. It keeps everything in one spot.',
  },
  {
    'name': 'CRAYONS',
    'imgName': 'Crayons.png',
    'image': 'kulay.png',
    'description':
        'Crayons are colorful sticks for drawing. You use them to make your pictures bright and happy.',
    's1':
        'Share crayons with friends and make a rainbow of drawings together. It is lots of fun!',
    's2':
        'Use crayons to color animals, houses, or anything you like. They are fun and easy to hold.',
    's3':
        'Crayons are colorful sticks for drawing. They make pictures bright and happy.',
  },
  {
    'name': 'ERASER',
    'imgName': 'Eraser.png',
    'image': 'pambura.png',
    'description':
        'An eraser helps you fix mistakes. It is like magic for taking away pencil marks and making your work look neat.',
    's1':
        'Erasers come in pink or white. Keep one in your pencil case for when you need it.',
    's2':
        'If you write something wrong, use the eraser to take it away. It is like magic.',
    's3':
        'An eraser is for fixing mistakes. It helps you make your work look nice.',
  },
  {
    'name': 'SHOES',
    'imgName': 'Shoes.png',
    'image': 'sapatos.png',
    'description':
        'Shoes are things you wear on your feet. They protect your feet and make it comfortable to walk and run.',
    's1':
        'Shoes can be red, blue, or any color you like. Choose the ones that make you happy.',
    's2':
        'Put on your shoes before going outside to play. They help you move comfortably.',
    's3':
        'Shoes are for your feet. They keep them safe and cozy when you walk or run.',
  },
  {
    'name': 'SCISSORS',
    'imgName': 'Scissor.png',
    'image': 'gunting.png',
    'description':
        'Scissors are tools for cutting paper or making crafts. They have two blades that open and close.',
    's1':
        'Keep your scissors in a safe place when you are done using them, and remember to close them to stay safe.',
    's2':
        'Be careful when using scissors, and always ask an adult for help. They help make straight lines or fun shapes.',
    's3':
        'Scissors are tools for cutting paper or making crafts. They have two blades that move together.',
  },
];

class Question {
  final String text;
  final List<Option> options;
  final String imgName;
  bool isLocked;
  Option? selectedOption;

  final String imagePath;

  Question({
    required this.text,
    required this.options,
    required this.imgName,
    required this.imagePath,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool inCorrect;

  const Option({
    required this.text,
    required this.inCorrect,
  });
}

final questions = [
  Question(
    text:
        'A ____ is like a big pocket with handles. It holds your toys, snacks, and things you need when you go out.',
    imgName: 'bag.png',
    imagePath: 'assets/for_quiz/bag.png',
    options: [
      const Option(text: 'Bag', inCorrect: true),
      const Option(text: 'Notebook', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: false),
      const Option(text: 'Shoes', inCorrect: false),
    ],
  ),
  Question(
    text:
        '_____ are like special friends made of paper. They have stories and pictures that you can read and enjoy.',
    imgName: 'book.png',
    imagePath: 'assets/for_quiz/book.png',
    options: [
      const Option(text: 'Ruler', inCorrect: false),
      const Option(text: 'Chair', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: false),
      const Option(text: 'Book', inCorrect: true),
    ],
  ),
  Question(
    text:
        'A _____ is a special seat for sitting. It keeps you comfy when you read, eat, or play.',
    imgName: 'chair.png',
    imagePath: 'assets/for_quiz/chair.png',
    options: [
      const Option(text: 'Pencil', inCorrect: false),
      const Option(text: 'Notebook', inCorrect: false),
      const Option(text: 'Chair', inCorrect: true),
      const Option(text: 'Book', inCorrect: false),
    ],
  ),
  Question(
    text:
        'A ______ is a long, straight tool with numbers. It helps you draw straight lines and measure things.',
    imgName: 'ruler.png',
    imagePath: 'assets/for_quiz/ruler.png',
    options: [
      const Option(text: 'Ruler', inCorrect: true),
      const Option(text: 'Notebook', inCorrect: false),
      const Option(text: 'Crayons', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: false),
    ],
  ),
  Question(
    text:
        'A ______ is a writing tool with a point. You use it for drawing and writing.',
    imgName: 'pencil.png',
    imagePath: 'assets/for_quiz/pencil.png',
    options: [
      const Option(text: 'Book', inCorrect: false),
      const Option(text: 'Chair', inCorrect: false),
      const Option(text: 'Eraser', inCorrect: false),
      const Option(text: 'Pencil', inCorrect: true),
    ],
  ),
  Question(
    text:
        'A ________ is like your personal paper book. You can write in it, draw pictures, and keep all your thoughts in one place.',
    imgName: 'notebook.png',
    imagePath: 'assets/for_quiz/notebook.png',
    options: [
      const Option(text: 'Eraser', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: false),
      const Option(text: 'Notebook', inCorrect: true),
      const Option(text: 'Shoes', inCorrect: false),
    ],
  ),
  Question(
    text:
        '_______ are colorful sticks for drawing. You use them to make your pictures bright and happy.',
    imgName: 'crayons.png',
    imagePath: 'assets/for_quiz/crayons.png',
    options: [
      const Option(text: 'Shoes', inCorrect: false),
      const Option(text: 'Crayons', inCorrect: true),
      const Option(text: 'Eraser', inCorrect: false),
      const Option(text: 'Bag', inCorrect: false),
    ],
  ),
  Question(
    text:
        'An _______ helps you fix mistakes. It is like magic for taking away pencil marks and making your work look neat.',
    imgName: 'eraser.png',
    imagePath: 'assets/for_quiz/eraser.png',
    options: [
      const Option(text: 'Bag', inCorrect: false),
      const Option(text: 'Shoes', inCorrect: false),
      const Option(text: 'Eraser', inCorrect: true),
      const Option(text: 'Scissors', inCorrect: false),
    ],
  ),
  Question(
    text:
        '______ are things you wear on your feet. They protect your feet and make it comfortable to walk and run.',
    imgName: 'shoes.png',
    imagePath: 'assets/for_quiz/shoes.png',
    options: [
      const Option(text: 'Eraser', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: false),
      const Option(text: 'Bag', inCorrect: false),
      const Option(text: 'Shoes', inCorrect: true),
    ],
  ),
  Question(
    text:
        '_______ are tools for cutting paper or making crafts. They have two blades that open and close.',
    imgName: 'scissors.png',
    imagePath: 'assets/for_quiz/scissors.png',
    options: [
      const Option(text: 'Ruler', inCorrect: false),
      const Option(text: 'Crayons', inCorrect: false),
      const Option(text: 'Pencil', inCorrect: false),
      const Option(text: 'Scissors', inCorrect: true),
    ],
  ),
];

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/gif/game.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF3056dd),
                      border:
                          Border.all(color: const Color(0xFF3056dd), width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '$_questionNumber/${questions.length}',
                      style: const TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: PageView.builder(
                      itemCount: questions.length,
                      controller: _controller,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final _question = questions[index];
                        return buildQuestion(_question);
                      },
                    ),
                  ),
                  _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: SimpleShadow(
            opacity: 0.3,
            color: Colors.black,
            offset: const Offset(2, 3),
            sigma: 1,
            child: Container(
              height: 140,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF89CFF3), width: 7),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF89CFF3),
              ),
              child: Center(
                child: Text(
                  question.text,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF89CFF3), width: 7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                question.imagePath,
                height: 180,
                width: 180,
              ),
            ),
          ],
        ),
        const Gap(8),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.inCorrect) {
                  _score++;
                }
              }
            },
          ),
        )
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3056dd),
      ),
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (_) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(
          _questionNumber < questions.length ? 'Next Page' : 'See the Result'),
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return SimpleShadow(
      opacity: 0.25,
      color: Colors.black,
      offset: const Offset(2, 2),
      sigma: 1,
      child: GestureDetector(
        onTap: () => onClickedOption(option),
        child: Container(
          height: 55,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF89CFF3),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color, width: 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option.text,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              getIconForOption(option, question)
            ],
          ),
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.inCorrect ? Colors.green : Colors.red;
      } else if (option.inCorrect) {
        return Colors.green;
      }
    }
    return const Color(0xFF89CFF3);
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.inCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red);
      } else if (option.inCorrect) {
        return const Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/gif/result.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Gap(30),
              Image.asset(
                'assets/gif/congrats.gif',
                height: 300,
                width: 300,
              ),
              const Gap(60),
              const Center(
                child: Text(
                  'You Scored',
                  style: TextStyle(
                      color: Color(0xFF3056dd),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  '$score/${questions.length}',
                  style: const TextStyle(
                      color: Color(0xFF3056dd),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(100),
              SimpleShadow(
                opacity: 0.3,
                color: Colors.black,
                offset: const Offset(3, 4),
                sigma: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3056dd),
                    minimumSize: const Size(300, 60),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => games(),
                      ),
                    );
                  },
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
