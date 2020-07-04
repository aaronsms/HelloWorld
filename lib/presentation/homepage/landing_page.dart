import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display_view.dart';
import 'package:helloworld/presentation/homepage/widgets/navigation_bar.dart';
import 'package:helloworld/application/schedule_requests/display_bloc.dart';
import 'package:helloworld/presentation/homepage/widgets/search_bar.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display_view.dart';
import 'package:helloworld/presentation/homepage/widgets/menu.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String viewBy = "Learners";

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ValueNotifier<String>("Learners"),
      child: Scaffold(
        backgroundColor: Palette.backgroundColor,
        bottomNavigationBar: NavigationBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Navigation Settings
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Palette.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Palette.primaryColor,
                            ),
                            child: DropdownButton(
                              underline: const SizedBox(),
                              value: viewBy,
                              items: <DropdownMenuItem<String>>[
                                DropdownMenuItem(
                                  value: 'Learners',
                                  child: Text(
                                    'Learners',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Martel Sans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Mentors',
                                  child: Text(
                                    'Mentors',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Martel Sans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                              onChanged: (String value) {
                                if (viewBy != value) {
                                  setState(() {
                                    viewBy = value;
                                    context.bloc<DisplayBloc>().add(
                                        const DisplayEvent
                                            .switchProfileDisplay());
                                  });
                                }
                              },
                            )),
                      )
                    ],
                  ),
                ),
                Menu()
              ],
            ),
            const SizedBox(height: 15),
            // Search bar
            SearchBar(),
            // Search result
            const SizedBox(height: 12),
            if (viewBy == "Learners")
              LearnerDisplayView()
            else
              MentorDisplayView(),
          ],
        ),
      ),
    );
  }
}

class _ToggleLearnerOrMentor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Palette.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Palette.primaryColor,
                ),
                child: DropdownButton<String>(
                  underline: const SizedBox(),
                  value: context.watch<ValueNotifier<String>>().value,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'Learners',
                      child: Text(
                        'Learners',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Mentors',
                      child: Text(
                        'Mentors',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                  onChanged: (String value) {
                    final viewBy = context.read<ValueNotifier<String>>();
                    if (viewBy.value != value) {
                      viewBy.value = value;
                      context
                          .bloc<DisplayBloc>()
                          .add(const DisplayEvent.switchProfileDisplay());
                    }
                  },
                )),
          )
        ],
      ),
    );
  }
}
