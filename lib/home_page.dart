import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:statistic_test/bar_graph/bar_graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  List<double> dailySteps = [5600, 4000, 10000, 7000, 3000, 1000, 12000];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(190, 187, 239, 162),
      body: ListView(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              child: Animate(
                effects:
                [FadeEffect(duration: 2000.ms), SlideEffect()],
                child: BarGraph(
                dailySteps: dailySteps,
              ),
              ),
            ),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child:
            SizedBox(
              height: 200,
              child: Animate(
                effects:
                [FadeEffect(duration: 2000.ms), SlideEffect()],
                child:
                    BarGraph(
                    dailySteps: dailySteps,
              ),
                ),
              ),
            ),
             Padding(padding: const EdgeInsets.all(8.0),
            child:
            SizedBox(
              height: 200,
              child: Animate(
                effects:
                [FadeEffect(duration: 2000.ms), SlideEffect()],
                child: BarGraph(
                dailySteps: dailySteps,
              ),
              ),
            ),
            ),
          ],
        ),
    );
  }

}