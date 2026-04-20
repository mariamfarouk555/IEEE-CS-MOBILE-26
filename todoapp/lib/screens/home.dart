import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/screens/tasksscreen.dart';
import '../Cubit_services/cubit.dart';
import '../Cubit_services/states.dart';
import '../widgets/reusable_widget.dart';
import 'addtasksscreen.dart';
import 'archivescreen.dart';
import 'donescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NotchBottomBarController _controller = NotchBottomBarController(index: 0);
  final _pageController = PageController(initialPage: 0);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _titleController = TextEditingController();
  final _timeController = TextEditingController();
  final _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isBottomSheetShow = false;
  final ValueNotifier<int> _valueNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        List<Widget> screens = [
          TaskScreen(tasks: cubit.tasks),
          const ArchiveScreen(),
          const DoneScreen(),
        ];

        List<String> titles = [
          'Tasks',
          'Archived',
          ' Done',
        ];

        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.indigo,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF3F51B5),
                  Color(0xFFFFFFF),
                    ],
                  ),
                ),
              ),

              leading: const Icon(
                Icons.sticky_note_2_outlined,
                color: Colors.white,
              ),

              title: ValueListenableBuilder<int>(
                valueListenable: _valueNotifier,
                builder: (context, value, child) {
                  return Text(
                    titles[value],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: screens,
            onPageChanged: (index) {
              _valueNotifier.value = index;
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF7F00FF),
                  Color(0xFF00B4DB),
                ],
              ),
            ),
            child: FloatingActionButton(
              onPressed: () async {
                if (isBottomSheetShow) {
                  if (_formKey.currentState!.validate()) {
                    cubit.insertToDatabase(
                      title: _titleController.text,
                      time: _timeController.text,
                      date: _dateController.text,
                      status: "status",
                    ).then((value) {
                      Navigator.pop(context);
                      isBottomSheetShow = false;
                    });
                  }
                } else {
                  _scaffoldKey.currentState!
                      .showBottomSheet((context) => AddTasksScreen(
                    formKey: _formKey,
                    titleController: _titleController,
                    timeController: _timeController,
                    dateController: _dateController,
                  ))
                      .closed
                      .then((value) {
                    isBottomSheetShow = false;
                  });
                  isBottomSheetShow = true;
                }
              },

              backgroundColor: Colors.transparent,
              elevation: 0,

              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          bottomNavigationBar: AnimatedNotchBottomBar(
            color: Colors.white,
            notchBottomBarController: _controller,
            elevation: 1,
            showLabel: true,
            removeMargins: false,
            bottomBarWidth: 500,
            showShadow: false,
            durationInMilliSeconds: 300,
            bottomBarItems: [
              bottomBarItem(
                icon: Icons.home,
                text: 'Home',
              ),
              bottomBarItem(
                icon: Icons.archive,
                text: 'Archived',
              ),
              bottomBarItem(
                icon: Icons.check_box,
                text: 'Done',
              ),
            ],
            onTap: (int value) {
              _pageController.jumpToPage(value);
            },
            kIconSize: 25,
            kBottomRadius: 30,
          ),
        );
      },
    );
  }
}
