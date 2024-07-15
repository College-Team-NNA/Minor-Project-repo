import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Colors.purple[700],
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
                      backgroundColor: Color(0xff9688e9).withOpacity(0.8),
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
                            borderWidth: 2,
                          ),
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.415,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Center(
            child: Text(
              'Progress Bar (In Progress)',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
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
