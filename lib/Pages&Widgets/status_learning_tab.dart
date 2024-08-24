import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatusLearningTab extends StatefulWidget {
  const StatusLearningTab({super.key, required this.size});
  final Size size;
  @override
  State<StatusLearningTab> createState() => _StatusLearningTabState();
}

class _StatusLearningTabState extends State<StatusLearningTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: widget.size.height * 0.285,
          width: widget.size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Course Details",
                  style: GoogleFonts.montserrat(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Learning Stats",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xb0909090),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.circle_rounded,
                            size: 14,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        TextSpan(
                            text: " CANCELLED",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500))
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.circle_rounded,
                          size: 14,
                          color: Colors.deepPurple.withOpacity(0.7),
                        )),
                        TextSpan(
                            text: " FINISHED",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500))
                      ]),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                    clipBehavior: Clip.antiAlias,
                    child: SfCartesianChart(
                      backgroundColor: const Color(0xff9688e9).withOpacity(0.8),
                      plotAreaBorderWidth: 0,
                      primaryXAxis: CategoryAxis(
                        axisLine: const AxisLine(width: 0),
                        majorGridLines: const MajorGridLines(width: 0),
                        labelStyle: GoogleFonts.andadaPro(
                            color: Colors.white, fontSize: 10),
                        interval: 1,
                      ),
                      primaryYAxis: NumericAxis(
                        axisLine: const AxisLine(width: 0),
                        majorGridLines: MajorGridLines(
                          width: 1,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        minimum: 0,
                        interval: 1,
                      ),
                      series: <SplineAreaSeries>[
                        SplineAreaSeries<ChartData, String>(
                          name: "Finished",
                          dataSource: getChartData(),
                          xValueMapper: (ChartData data, _) => data.month,
                          yValueMapper: (ChartData data, _) => data.value,
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurple,
                              Colors.deepPurple.withOpacity(0.3)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          markerSettings: const MarkerSettings(
                              isVisible: true,
                              color: Colors.white,
                              borderColor: Colors.deepPurple,
                              borderWidth: 0.5,
                              height: 6,
                              width: 6),
                        ),
                        SplineAreaSeries<ChartData, String>(
                          name: "Cancelled",
                          dataSource: getChartDatat(),
                          xValueMapper: (ChartData data, _) => data.month,
                          yValueMapper: (ChartData data, _) => data.value,
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.3)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          markerSettings: const MarkerSettings(
                            isVisible: true,
                            color: Colors.white,
                            borderWidth: 0,
                            height: 5,
                            width: 5,
                          ),
                        ),
                      ],
                      tooltipBehavior: TooltipBehavior(enable: true),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Container(
          height: widget.size.height * 0.415,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Wireframing\nAdvance",
                  style: GoogleFonts.montserrat(
                      fontSize: 24, fontWeight: FontWeight.w600, height: 1),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(
                          Icons.circle_rounded,
                          size: 14,
                          color: Colors.black,
                        )),
                        TextSpan(
                            text: " Assignment",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500))
                      ]),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const WidgetSpan(
                              child: Icon(
                            Icons.circle_rounded,
                            size: 14,
                            color: Theme_req.piechart_outer,
                          )),
                          TextSpan(
                              text: " Lectures",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: CircularStepProgressIndicator(
                          totalSteps: 40,
                          currentStep: 30,
                          stepSize: 20,
                          padding: 3.1415 / 80,
                          startingAngle: 0,
                          selectedColor: Theme_req.piechart_outer,
                          unselectedColor: const Color(0xffeaebec),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircularStepProgressIndicator(
                              totalSteps: 42,
                              currentStep: 28,
                              stepSize: 20,
                              padding: 3.1415 / 80,
                              startingAngle: 0,
                              selectedColor: Colors.black,
                              unselectedColor: const Color(0xffeaebec),
                              child: Center(
                                child: Text(
                                  " 75%\nDone",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            color: Theme_req.follow_btn,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Continue Learning",
                  style: GoogleFonts.montserrat(
                      color: Theme_req.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                )),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Theme_req.white,
                    radius: 21,
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.play,
                        size: 18,
                      ), // Your icon
                      color: Theme_req.follow_btn, // Icon color
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.month, this.value);
  final String month;
  final double value;
}

List<ChartData> getChartData() {
  return [
    ChartData('', 0),
    ChartData('Jan', 2),
    ChartData('Feb', 3),
    ChartData('Mar', 2),
    ChartData('Apr', 3.5),
    ChartData('May', 2.2),
    ChartData('Jun', 1.2),
    ChartData('Jul', 2),
  ];
}

List<ChartData> getChartDatat() {
  return [
    ChartData('', 0),
    ChartData('Jan', 1),
    ChartData('Feb', 0),
    ChartData('Mar', 0),
    ChartData('Apr', 0),
    ChartData('May', 1),
    ChartData('Jun', 0),
    ChartData('Jul', 1),
  ];
}
