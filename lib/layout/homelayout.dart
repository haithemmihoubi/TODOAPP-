import 'package:flutter/material.dart';
import 'package:todoapp/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:todoapp/modules/done_tasks/done_tasks_screen.dart';
import 'package:todoapp/modules/new_tasks/new_tasks_screen.dart';

class homeLayout extends StatefulWidget {
  // 1 create the database
  //create tables
  //  open the db
  // insert to  database
  //get from databse
  // update delete from DB

  @override
  _homeLayoutState createState() => _homeLayoutState();
}

class _homeLayoutState extends State<homeLayout> {
  int currentIndex = 0;
  List<Widget> Screens = [newTask(), doneTask(), ArchiveTask()];
  List<String> titles = ["New Task", "Done Tasks", "Archived Tasks"];

  List<Color> colors = [Colors.lightBlue, Colors.greenAccent, Colors.redAccent];

  Future<String> getName() async {
    return "haithem";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[currentIndex],
        centerTitle: true,
        elevation: 16,
        title: Text(titles[currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /* try {
           var name = await getName();
           print(name) ;
           print("osama") ;
         }catch(error){
           print("the error is ${error.toString()}") ;
         }*/
          getName().then((value) {
            print(value);
            print("osama");
            // ignore: invalid_return_type_for_catch_error
          }).catchError((error) => print("the error  is ${error.toString()} "));
        },
        hoverElevation: 16,
        elevation: 0.0,
        hoverColor: Colors.green,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 16.0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list_outlined),
            label: 'Tasks',
            activeIcon: Icon(Icons.bookmark_outlined),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outlined),
              label: 'Done',
              activeIcon: Icon(Icons.playlist_add_check_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined), label: 'Archived'),
        ],
      ),
      body: Screens[currentIndex],
    );
  }
}
