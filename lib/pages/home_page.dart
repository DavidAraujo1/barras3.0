import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paricial2/themes/colors_list.dart';

class HomePage extends StatelessWidget {
  static final routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _bodyPage(context),
      ),
    );
  }

  Widget _bodyPage(BuildContext context){
   return Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Padding(
         padding: EdgeInsets.only(
           top: 16.0,
           left: 16.0,
           right: 16.0,
         ),
         child:_appBar() ,
         ),
         _body(),
     ]
   );

  }

 Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Icon(Icons.menu),
          onTap: () {
            print('DrawerMenu Open');
          },
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Icon(
                  Icons.shop
                ),
              ]
            ),
          ],
        ),
      ],
    );
  }

  Widget _body() {
    final  double _borderValue = 35.0;
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 2.0),
        shrinkWrap: true,
        children: [
          Container(
            height: 560.0,
            decoration: BoxDecoration(
              color: ColorList.backgroundBody,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_borderValue),
                topRight: Radius.circular(_borderValue),
              )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                 Text(
                  'COMERCIAL SIVAR ',
                  style: TextStyle(
                    color: ColorList.backgroundButton,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                  ),
                ),
        
                Padding(padding: EdgeInsets.only(
                  top: 40.0,
                  left: 30.0,
                  right: 30.0,
                ),
                child: 
                
                buscar(),
                ),
                
              ],
            ),
          )
        ],
      ),
      );
  }


   Widget buscar() {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          cursorColor: ColorList.disableColor,
          decoration: InputDecoration(
            
            suffixIcon: Icon(
                  CupertinoIcons.search_circle,
                  color: ColorList.disableColor,
                  size: 28.0,
            ),
            border:  InputBorder.none,
            hintStyle: TextStyle(
              color: ColorList.disableColor,
              fontSize: 18.0
            ),
              hintText: "Buscar..."
          ),
        ),
      );
    }
  

}

