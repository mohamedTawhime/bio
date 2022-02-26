import 'dart:ui';

import 'package:bio/widget/bio_card.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
            'Bio',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
          children:[
          ImageFiltered(
            imageFilter: ImageFilter.blur(),
            child: Image.network(
                // 'https://cdn.pixabay.com/photo/2020/08/19/09/52/vector-art-5500539_1280.jpg',
              'https://sewandco.com.au/wp-content/uploads/2014/11/abstract-bg.jpg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

            Align(alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:   [
                  Spacer(),
                  const Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2020/08/19/09/52/vector-art-5500539_1280.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Mohamed tawhine',
                    style: TextStyle(
                      color:  Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('mohamed@email.com'),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                    height: 30,
                    endIndent: 40,
                    indent: 40,
                  ),
                  //BioCared(),
                  BioCared(leading: Icons.email, title: 'Email', subtitle: 'Mohamed@gamil.com', traling: (Icons.send),bottom: 10, function: () { print('send');},),
                  BioCared(leading: Icons.mobile_friendly, title: 'mobile', subtitle: '0599448971', traling: Icons.call,bottom: 20,function: (){print('phone');},),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                   // margin: EdgeInsets.only(bottom: 25),
                      child: Text('flutter coures 2022'),
                  ),
                 // SizedBox(height: 20,),
                ],
              ),
            ),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //     child: Text('Good day!'),
            // ),
            
            // PositionedDirectional(
            //   start: 0,
            //   end: 0,
            //   bottom: 20,
            //     child: Text('flutter course 2022',textAlign:TextAlign.center,)
            // ),
            

        ],
      ),
    );
  }
}

