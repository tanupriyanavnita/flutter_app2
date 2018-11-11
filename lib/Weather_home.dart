import 'package:flutter/material.dart';

class WeatherHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    _cityDetails(){
      return Column(
        children: <Widget>[
          Text("New York",style: TextStyle(
            color: Colors.white,
            fontSize: 44.0,
          ),),
          Text("Today",style: TextStyle(
          color: Colors.white,
      fontSize: 30.0,
      ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Noon",style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),),
              Icon(Icons.keyboard_arrow_down,color: Colors.white,)
            ],
          )
        ],
      );
    }

    _tempDetails(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.wb_sunny),
          SizedBox(width:20.0,),
          Column(
      children: <Widget>[
        Text(" 32 C"),
        Text("Mostly Sunny"),
          ],
           )
        ],
      );
    }

    _getItem(IconData icon,String num,String measure){
      return Column(
        children: <Widget>[
          Icon(icon),
          Text(num),
          Text(measure),
        ],
      );
    }



    _extraDetails(){
      return Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: <Widget>[

              _getItem(Icons.ac_unit,"3","km/hr"),
              _getItem(Icons.ac_unit,"3","%"),
              _getItem(Icons.ac_unit,"12","%"),
            ],
      );
    }



    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(

      backgroundColor: Colors.red,
      elevation:0.0,
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _cityDetails(),
          _tempDetails(),
          _extraDetails(),
        ],
      ),
    );
  }
}