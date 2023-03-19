import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/core/screens/dashboard/widgets/dashboard_appbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: const DashboardAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey, Codding with T", style: textTheme.bodyMedium),
                    Text("Explore Courses", style: textTheme.displayMedium),
                    const SizedBox(
                      height: dashboardPadding,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(left: BorderSide(width: 4)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Search...",
                                style: textTheme.displayMedium!.apply(
                                    color: Colors.grey.withOpacity(0.5))),
                            const Icon(Icons.mic, size: 25)
                          ]),
                    ),
                    const SizedBox(height: dashboardPadding),
                    SizedBox(
                      height: 45,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: Row(children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkColor),
                                child: Center(
                                  child: Text("JS",
                                      style: textTheme.titleLarge
                                          ?.apply(color: Colors.white)),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Flexible(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Javascript",
                                        style: textTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "10 lessons",
                                        style: textTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ]),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: Row(children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkColor),
                                child: Center(
                                  child: Text("JS",
                                      style: textTheme.titleLarge
                                          ?.apply(color: Colors.white)),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Flexible(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Javascript",
                                        style: textTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "10 lessons",
                                        style: textTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ]),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: Row(children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkColor),
                                child: Center(
                                  child: Text("JS",
                                      style: textTheme.titleLarge
                                          ?.apply(color: Colors.white)),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Flexible(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Javascript",
                                        style: textTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "10 lessons",
                                        style: textTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ]),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: dashboardPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: cardBgColor),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Icon(Icons.bookmark,
                                          color: Colors.grey.shade500),
                                    ),
                                    const Flexible(
                                      child: Image(
                                        image: AssetImage(splashImage),
                                        height: 100,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "Android for beginners",
                                  style: textTheme.headlineMedium,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 Lessons",
                                  style: textTheme.bodyMedium,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: dashboardCardPadding,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cardBgColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Icon(Icons.bookmark,
                                              color: Colors.grey.shade500),
                                        ),
                                        const Flexible(
                                          child: Image(
                                            image: AssetImage(splashImage),
                                            height: 100,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Java",
                                      style: textTheme.headlineMedium,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "10 Lessons",
                                      style: textTheme.bodyMedium,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                              OutlinedButton(
                                  onPressed: () {},
                                  child: const Center(
                                    child: Text("View All"),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: dashboardPadding),
                    Text("Top Courses",
                        style: textTheme.headlineMedium
                            ?.apply(fontSizeFactor: 1.2)),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          SizedBox(
                            width: 320,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cardBgColor),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Flutter Crash Course",
                                              style: textTheme.headlineMedium,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const Flexible(
                                            child: Image(
                                              image: AssetImage(splashImage),
                                              height: 110,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder()),
                                              onPressed: () {},
                                              child:
                                                  const Icon(Icons.play_arrow)),
                                          const SizedBox(
                                              width: dashboardCardPadding),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "3 sections",
                                                style: textTheme.headlineMedium,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "Programming languages",
                                                style: textTheme.bodyMedium,
                                                overflow: TextOverflow.ellipsis,
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 320,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cardBgColor),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Flutter Crash Course",
                                              style: textTheme.headlineMedium,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const Flexible(
                                            child: Image(
                                              image: AssetImage(splashImage),
                                              height: 110,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder()),
                                              onPressed: () {},
                                              child:
                                                  const Icon(Icons.play_arrow)),
                                          const SizedBox(
                                              width: dashboardCardPadding),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "3 sections",
                                                style: textTheme.headlineMedium,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "Programming languages",
                                                style: textTheme.bodyMedium,
                                                overflow: TextOverflow.ellipsis,
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 320,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cardBgColor),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Flutter Crash Course",
                                              style: textTheme.headlineMedium,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const Flexible(
                                            child: Image(
                                              image: AssetImage(splashImage),
                                              height: 110,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder()),
                                              onPressed: () {},
                                              child:
                                                  const Icon(Icons.play_arrow)),
                                          const SizedBox(
                                              width: dashboardCardPadding),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "3 sections",
                                                style: textTheme.headlineMedium,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "Programming languages",
                                                style: textTheme.bodyMedium,
                                                overflow: TextOverflow.ellipsis,
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
