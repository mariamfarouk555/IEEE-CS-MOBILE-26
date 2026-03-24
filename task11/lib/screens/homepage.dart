import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );
  final PageController _pageController = PageController(initialPage: 0);
  final List<Map<String, dynamic>> tasks = [];
  final List<Map<String, dynamic>> doneTasks = [];
  final List<Map<String, dynamic>> archivedTasks = [];

  Widget buildPage(
    String title,
    Color bgColor, {
    bool showTasks = false,
    bool showArchived = false,
    bool showDone = false,
  }) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.lightBlueAccent],
            ),
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: SizedBox(
              height: 700,
              width: 400,
              child: Center(
                child: showTasks
                    ? tasks.isEmpty
                          ? Text(
                              "No Tasks Yet",
                              style: GoogleFonts.quicksand(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            )
                          : ListView.builder(
                              itemCount: tasks.length,
                              itemBuilder: (context, index) => Card(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white54,
                                child: ListTile(
                                  title: Text(
                                    tasks[index]["title"],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    DateFormat(
                                      'dd/MM/yyyy – hh:mm a',
                                    ).format(tasks[index]["time"]),
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  leading: IconButton(
                                    icon: const Icon(
                                      Icons.circle_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        doneTasks.add(tasks[index]);
                                        tasks.removeAt(index);
                                      });
                                      FToast fToast = FToast();
                                      fToast.init(context);
                                      fToast.showToast(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 24.0,
                                            vertical: 12.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(
                                            "Task has been done",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        gravity: ToastGravity.BOTTOM,
                                        toastDuration: const Duration(
                                          seconds: 2,
                                        ),
                                      );
                                    },
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.archive,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            archivedTasks.add(tasks[index]);
                                            tasks.removeAt(index);
                                          });
                                          FToast fToast = FToast();
                                          fToast.init(context);

                                          fToast.showToast(
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 24.0,
                                                    vertical: 12.0,
                                                  ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                                color: Colors.grey,
                                              ),
                                              child: const Text(
                                                "Task has been archived",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            gravity: ToastGravity.BOTTOM,
                                            toastDuration: const Duration(
                                              seconds: 2,
                                            ),
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              title: const Text(
                                                "Confirm Delete",
                                              ),
                                              content: const Text(
                                                "Are you sure you want to delete this task?",
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Cancel"),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      tasks.removeAt(index);
                                                    });
                                                    Navigator.pop(context);
                                                    FToast fToast = FToast();
                                                    fToast.init(context);
                                                    fToast.showToast(
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets.symmetric(
                                                              horizontal: 24.0,
                                                              vertical: 12.0,
                                                            ),
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                25.0,
                                                              ),
                                                          color: Colors.grey,
                                                        ),
                                                        child: const Text(
                                                          "Task has been deleted",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      gravity:
                                                          ToastGravity.BOTTOM,
                                                      toastDuration:
                                                          const Duration(
                                                            seconds: 2,
                                                          ),
                                                    );
                                                  },
                                                  child: const Text("Delete"),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                    : showArchived
                    ? archivedTasks.isEmpty
                          ? Text(
                              "No Archived Tasks",
                              style: GoogleFonts.quicksand(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            )
                          : ListView.builder(
                              itemCount: archivedTasks.length,
                              itemBuilder: (context, index) => Card(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white54,
                                elevation: 4,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(16),
                                  leading: const Icon(
                                    Icons.archive,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  title: Text(
                                    archivedTasks[index]["title"],
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(
                                      Icons.unarchive,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        tasks.add(archivedTasks[index]);
                                        archivedTasks.removeAt(index);
                                      });

                                      FToast fToast = FToast();
                                      fToast.init(context);

                                      fToast.showToast(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 24.0,
                                            vertical: 12.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(
                                            "Task has been unarchived",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        gravity: ToastGravity.BOTTOM,
                                        toastDuration: const Duration(
                                          seconds: 2,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                    : showDone
                    ? doneTasks.isEmpty
                          ? Text(
                              "No tasks done yet \n     Keep going!",
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            )
                          : ListView.builder(
                              itemCount: doneTasks.length,
                              itemBuilder: (context, index) => Card(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white54,
                                elevation: 4,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(16),
                                  trailing: const Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 30,
                                  ),
                                  title: Text(
                                    doneTasks[index]["title"],
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                    : Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _addTask() {
    String newTask = "";
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add Task"),
        content: TextField(
          onChanged: (value) => newTask = value,
          decoration: const InputDecoration(hintText: "Enter task name"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (newTask.trim().isNotEmpty) {
                setState(() {
                  tasks.add({"title": newTask, "time": DateTime.now()});
                });
              }
              Navigator.pop(context);
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 40),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          'All Tasks',
          style: GoogleFonts.fredoka(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey[800]),
              child: const Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.task, color: Colors.blue),
              title: const Text("Tasks"),
              onTap: () {
                Navigator.pop(context);
                _pageController.jumpToPage(0);
                _controller.jumpTo(0);
              },
            ),

            ListTile(
              leading: const Icon(Icons.archive, color: Colors.orange),
              title: const Text("Archived"),
              onTap: () {
                Navigator.pop(context);
                _pageController.jumpToPage(1); // Archived Page
                _controller.jumpTo(1);
              },
            ),

            ListTile(
              leading: const Icon(Icons.check_circle, color: Colors.green),
              title: const Text("Done"),
              onTap: () {
                Navigator.pop(context);
                _pageController.jumpToPage(2); // Archived Page
                _controller.jumpTo(2);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          buildPage("Tasks Page", Colors.transparent, showTasks: true),
          buildPage("Archived Page", Colors.transparent, showArchived: true),
          buildPage("Done Page", Colors.transparent, showDone: true),
        ],
      ),
      extendBody: true,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white54,
        child: const Icon(Icons.add, color: Colors.black),
        onPressed: _addTask,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // ✅ Animated Notch Bottom Bar
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: Colors.white,
        notchColor: Colors.lightBlue,
        kIconSize: 28,
        kBottomRadius: 24,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(Icons.home, color: Colors.grey),
            activeItem: Icon(Icons.home, color: Colors.white),
            itemLabel: 'Tasks',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.task, color: Colors.grey),
            activeItem: Icon(Icons.task, color: Colors.white),
            itemLabel: 'Archived',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.task_alt, color: Colors.grey),
            activeItem: Icon(Icons.task_alt, color: Colors.white),
            itemLabel: 'Done',
          ),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
