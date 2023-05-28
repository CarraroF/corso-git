import 'package:statistic_test/bar_graph/individual_bar.dart';
import 'package:statistic_test/home_page.dart';

class BarData{
  final double mondaySteps;
  final double tuesdaySteps;
  final double wednesdaySteps;
  final double thursdaySteps;
  final double fridaySteps;
  final double saturdaySteps;
  final double sundaySteps;

  BarData({
    required this.mondaySteps,
    required this.tuesdaySteps,
    required this.wednesdaySteps,
    required this.thursdaySteps,
    required this.fridaySteps,
    required this.saturdaySteps,
    required this.sundaySteps
    });

List<IndivualBar> barData = [];

void initializeBarData(){
  barData = [
    IndivualBar(x: 1, y: mondaySteps),
    IndivualBar(x: 2, y: tuesdaySteps),
    IndivualBar(x: 3, y: wednesdaySteps),
    IndivualBar(x: 4, y: thursdaySteps),
    IndivualBar(x: 5, y: fridaySteps),
    IndivualBar(x: 6, y: saturdaySteps),
    IndivualBar(x: 7, y: sundaySteps),
  ];
}

}