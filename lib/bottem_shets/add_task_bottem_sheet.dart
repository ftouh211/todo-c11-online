import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_part_2/app_colors.dart';

class AddTaskBottemSheet extends StatefulWidget {
   AddTaskBottemSheet({super.key});

  @override
  State<AddTaskBottemSheet> createState() => _AddTaskBottemSheetState();
}

class _AddTaskBottemSheetState extends State<AddTaskBottemSheet> {
  @override
  DateTime selectedDate = DateTime.now();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            "Add new Task",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                "enter your task ",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Select Date ",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              selctDateFun();
            },
            child: Text(
              textAlign: TextAlign.center,
              selectedDate.toString().substring(0,10),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: AppColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
              child: Text(
                "Add Task",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  selctDateFun() async{
    DateTime? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if(chosenDate != null){
      selectedDate = chosenDate;
      setState(() {
      });
    }
  }
}
