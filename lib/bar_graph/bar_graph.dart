import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:statistic_test/bar_graph/bar_data.dart';

class BarGraph extends StatelessWidget{
  final List dailySteps;
  const BarGraph({super.key, required this.dailySteps});
  
  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      mondaySteps: dailySteps[0],
      tuesdaySteps: dailySteps[1],
      wednesdaySteps: dailySteps[2],
      thursdaySteps: dailySteps[3],
      fridaySteps:  dailySteps[4],
      saturdaySteps: dailySteps[5],
      sundaySteps: dailySteps[6],
    );
    myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 20000,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false,)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles,),),
        ),
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
          x: data.x,
          barRods: [BarChartRodData(
            toY: data.y,
            color: Color.fromARGB(255, 1, 76, 4),
            width: 10,
            borderRadius: BorderRadius.circular(25),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 100,
            ),
          ),
          ],
          ),
          )
          .toList(),
      ),
    );
  }

}

Widget getBottomTitles (double value, TitleMeta meta){
  const style = TextStyle(
    color: Color.fromARGB(255, 1, 76, 4),
    fontWeight: FontWeight.bold,
     fontSize: 14
     );
     Widget text;
     switch(value.toInt()){
      case 1:
        text = const Text('M',style: style);
        break;
      case 2:
        text = const Text('T',style: style);
        break;
      case 3:
        text = const Text('W',style: style);
        break;
      case 4:
        text = const Text('T',style: style);
        break;
      case 5:
        text = const Text('F',style: style);
        break;
      case 6:
        text = const Text('S',style: style);
        break;
      case 7:
        text = const Text('S',style: style);
        break;
      default:
        text = const Text('',style: style);
        break;
     } 
    return SideTitleWidget(child: text, axisSide: meta.axisSide);
}