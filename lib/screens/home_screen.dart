import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class home_screen extends StatelessWidget{
  static const routName = "/home_screen";
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(title: Text('Task manager', style: GoogleFonts.montserrat(),),),
    body: Center
    (child: Text('No Task Added Yet')
    ,), 
    floatingActionButton: FloatingActionButton (
      child:Icon(
        Icons.add, 
        color:Colors.white , 
      ),
      backgroundColor: Colors.blue,
       onPressed :()=>showModalBottomSheet(
        context: context, 
       builder:(BuildContext context)=> Container(
        padding: EdgeInsets.all(10.0),
        height: 500,
        color: Colors.blue[200],
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                'Add Task',style: GoogleFonts.montserrat
                (color:Colors.white,
                fontSize: 20.0,)
          
          ,),
          GestureDetector(
            onTap: ()=> Navigator.of(context).pop(),
            child: Icon(
              Icons.close,
            ),
          ),
              ],
            ),
            Divider(thickness: 1.2),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:BorderSide(color: Colors.blue),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Enter Task',
                hintStyle: GoogleFonts.montserrat(),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0 ),
              width: MediaQuery.of(context).size.width,
              height: 250.0,
              child: Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width/2)-20,
                    color: Colors.white,
                    child: ElevatedButton(
                      child:Text(
                        'RESET',
                        style: GoogleFonts.montserrat(),
                      ),
                      onPressed:()=>print('Reset pressed'),
                    ),
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width/2)-20,
                    color: Colors.white,
                    child: ElevatedButton(
                      child:Text(
                        'Add',
                        style: GoogleFonts.montserrat(),
                      ),
                      onPressed:()=>print('Add pressed'),
                    ),
                  ),
            
                ],
              ),
            )
              
            ],
        ),
       ),
      ),
    ),
    ); 
  }
 } 