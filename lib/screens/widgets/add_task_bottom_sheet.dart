import 'package:flutter/material.dart';
import 'package:todo_app_c8/shared/styles/my_theme.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var formKey = GlobalKey<FormState>();
  String selected = DateTime.now().toString().substring(0,10);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add New Task',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (input){
                  if(input == null || input.trim().isEmpty){
                    return 'Please enter a valid title';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  label: Text('Title'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                validator: (input){
                  if(input == null || input.trim().isEmpty){
                    return 'Please enter a valid description';
                  }
                },
                minLines: 4,
                maxLines: 4,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  label: Text('Description'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Select Date',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
              ),
              InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        chooseDate();
                      },
                      child: Text(
                        selected,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: MyThemeData.primaryLightColor),
                      ),
                    ),
                  )),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(onPressed: () {
                addTask();
                print('task has been added successfully');
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }

  void addTask(){
    if(formKey.currentState?.validate() == false){
      return;
    }
    // add task
  }


  void chooseDate() async{
 DateTime? selectedDate = await showDatePicker(
        context: context,
        builder: (context, child) => Theme(data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(),
        ), child: child!),
        initialDate: DateTime.now(), 
        firstDate: DateTime.now(), 
        lastDate: DateTime.now().add(Duration(days: 365)));
 if(selectedDate != null)
 selected = selectedDate.toString().substring(0,10);
 setState(() {

 });
  }
}
