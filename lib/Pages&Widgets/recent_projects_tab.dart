import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class RecentProjectsTab extends StatefulWidget {
  const RecentProjectsTab({super.key, required this.size});
  final Size size;
  @override
  State<RecentProjectsTab> createState() => _RecentProjectsTabState();
}

class _RecentProjectsTabState extends State<RecentProjectsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: FutureBuilder<ListResult>(
                future: linklist("xMKnY6mzopZbzxGXfsBeV1dnGs82"),
                builder: (context, sn) {
                  if (sn.connectionState == ConnectionState.done &&
                      sn.hasData) {
                    final list = sn.data!;
                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: list.items.length + 1,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 16 / 10),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Theme_req.offWhite,
                          ),
                          clipBehavior: Clip.antiAlias,
                          padding: const EdgeInsets.all(12),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(34)),
                              clipBehavior: Clip.antiAlias,
                              child: FutureBuilder(
                                future: (index == 0)
                                    ? link("UPLOAD PNG.png")
                                    : dlink(list.items[index - 1]),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.done) {
                                    return GestureDetector(
                                      child: Image.network(
                                        snapshot.data.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                      onTap: () {
                                        if (index == 0) {
                                          Navigator.pushNamed(
                                              context, "/projectuploadform");
                                        }
                                        if (index == 2) {
                                          Navigator.pushNamed(
                                              context, "/visitorView");
                                        }
                                        if (index == 3) {
                                          Navigator.pushNamed(
                                              context, "/portui");
                                        }
                                        if (index == 1) {
                                          Navigator.pushNamed(
                                              context, "/androui");
                                        }
                                      },
                                    );
                                  } else {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  }
                                },
                              )),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                }),
          )
        ],
      ),
    );
  }
}
