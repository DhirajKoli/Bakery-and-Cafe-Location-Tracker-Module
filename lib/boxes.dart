import 'package:flutter/material.dart';
import './container.dart';

class Boxes extends StatelessWidget {

 
  Function gotoLocation; 
  Map mapInst; 

  Boxes(this.gotoLocation,this.mapInst);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          gotoLocation(mapInst['lat'], mapInst['long']);
        },
        child: Container(
          child: new FittedBox(
            child: Material(
                color: Colors.white,
                elevation: 5.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 180,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(mapInst['image']),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyContainer(mapInst['name'],mapInst['type']),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}