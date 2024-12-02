class CalCulatorBrain {
  CalCulatorBrain(
      {required this.bmi, required this.height, required this.weight});
  final double bmi;
  final int height;
  final int weight;

  String getStatus() {
    if (bmi >= 25) {
      return "OVERWEIGHT";
    } else if (bmi < 18.5) {
      return "NORMALL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getAge() {
    if (bmi >= 25) {
      return "You need to play more sports and eat healthy food!";
    } else if (bmi > 18) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You need to eat more and choose a healthy food!";
    }
  }

  String getBMIsCalCulator() {
    return bmi.toStringAsFixed(1);
  }
}
