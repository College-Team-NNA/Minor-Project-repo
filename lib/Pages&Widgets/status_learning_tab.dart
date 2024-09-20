import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/data_class.dart';
import 'package:minor_project/utils/func.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.085,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 10),
                  Brand(
                    Brands.adobe_photoshop,
                    size: 80,
                  ),
                  Brand(
                    Brands.adobe_illustrator,
                    size: 80,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 10, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff1f1f27),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Brand(
                        Brands.figma,
                        size: 40,
                      ),
                    ),
                  ),
                  Brand(
                    Brands.blender_3d,
                    size: 80,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.68 * 0.465,
                      width: widget.size.width,
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 30, right: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 15),
                          Text(
                            "Activity",
                            style: GoogleFonts.montserrat(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Project Stats",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xb0909090),
                            ),
                          ),
                          const SizedBox(height: 15),
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
                                      text: " In Progress",
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
                          const SizedBox(height: 20),
                          AspectRatio(
                            aspectRatio: 16 / 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0)),
                              clipBehavior: Clip.antiAlias,
                              child: SfCartesianChart(
                                backgroundColor:
                                    const Color(0xff9688e9).withOpacity(0.8),
                                plotAreaBorderWidth: 0,
                                primaryXAxis: CategoryAxis(
                                  axisLine: const AxisLine(width: 0),
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
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
                                    dataSource: UserDetail.graph_1,
                                    xValueMapper: (ChartData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartData data, _) =>
                                        data.data,
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
                                    dataSource: UserDetail.graph_2,
                                    xValueMapper: (ChartData data, _) =>
                                        data.month,
                                    yValueMapper: (ChartData data, _) =>
                                        data.data,
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.28 * 0.465,
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: [
                            Text(
                              "Continue Learning",
                              style: GoogleFonts.montserrat(
                                  color: Theme_req.follow_btn,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                backgroundColor: Theme_req.follow_btn,
                                radius: 21,
                                child: IconButton(
                                  icon: const FaIcon(
                                    FontAwesomeIcons.play,
                                    size: 18,
                                  ), // Your icon
                                  color: Colors.white, // Icon color
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4 * .06,
              ),
              Expanded(
                child: Container(
                  height: widget.size.height * 0.468,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Wireframing\nAdvance",
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1),
                        ),
                        const SizedBox(height: 15),
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            height: widget.size.height * 0.3008,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Your Tasks",
                      style: GoogleFonts.montserrat(
                          fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          size: 26,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.separated(
                      itemCount: 5,
                      clipBehavior: Clip.antiAlias,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          height:
                              MediaQuery.of(context).size.height * 0.4 * 0.3,
                          decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? Theme_req.follow_btn
                                  : Colors.black.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    DateFormat("MMM dd yyyy ● EEEE")
                                        .format(DateTime.now()),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.multiply_circle_fill,
                                      color: index % 2 != 0
                                          ? Theme_req.follow_btn
                                          : Colors.black.withOpacity(0.75),
                                    ),
                                    style: nosplashstyle,
                                  )
                                ],
                              ),
                              const Spacer(),
                              Text(
                                "Complete the Pages ASAP",
                                style: GoogleFonts.inter(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                "This is a description for the tasks.",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: index % 2 != 0
                                      ? Colors.grey[500]
                                      : Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
