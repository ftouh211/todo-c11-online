import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_part_2/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      // padding: EdgeInsets.all(12),
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(onPressed: (context){
          },
            label: "Delete",
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18),bottomLeft: Radius.circular(18)),
          ),
          SlidableAction(onPressed: (context){
          },
            label: "Edit",
            icon: Icons.edit,
            backgroundColor: Colors.blue,
          )
        ]),
        child: Padding(
          padding:  EdgeInsets.only(left: 12,right: 12),
          child: Row(
            children: [
              Container(
                height: 62,
                width: 4,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Play basket ball",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(Icons.compass_calibration),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "10:30 AM",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            // fontWeight: FontWeight.w700,
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                  child: Icon(Icons.done,color: Colors.white,size: 28.8,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
