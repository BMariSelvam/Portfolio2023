class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    "BMI calculator Application",
    'The purpose of our BMI Calculator app project is to provide a user-friendly tool for individuals to calculate their Body Mass Index (BMI). This app aims to help users assess their health and fitness by determining if their weight is within a healthy range based on their height and weight',
    'assets/images/Bmi_Calculator.jpg',
    'https://github.com/candymaari/BMIcalculator',
  ),
  Project(
    'tic tac toe Game Application',
    "One player plays X and the other plays O. The players take turns placing their marks on a grid of three-by-three cells. If a given player gets three marks in a row horizontally, vertically, or diagonally, then that player wins the game.",
    'assets/images/tic tac toe game lmage.png',
    'https://github.com/candymaari/TicTacToeGame',
  ),
  Project(
      'Neumorphic calculator Application',
      'Neumorphic calculator is an open-source project that brings together the elegance of a beautifully designed calculator system, an calculator with a neumorphic touch, This is a basic project for beginners, the android calculator app will help us to do various arithmetic calculations. This android application will have a user interface with numbers and arithmetic operations. For the development of this application, we will make use of Android Studio.',
      'assets/images/calculatorImage.png',
      'https://github.com/candymaari/Calculater'),
];
