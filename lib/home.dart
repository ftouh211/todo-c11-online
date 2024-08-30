import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_part_2/app_colors.dart';
import 'package:todo_part_2/bottem_shets/add_task_bottem_sheet.dart';
import 'package:todo_part_2/tabs/settings_tabs.dart';
import 'package:todo_part_2/tabs/task_tabs.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.secondery,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "To Do List",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        toolbarHeight: 90,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,

              builder: (context) => Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskBottemSheet(),
              ));
        },
        child: Icon(
          size: 30,
          Icons.add,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.white, width: 4),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        color: Colors.white,
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.gray,
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(size: 30, Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(size: 30, Icons.settings), label: "Setting"),
            ]),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
    TaskTabs(),
    SettingsTabs(),
  ];
}
