import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  const homepage({super.key});

  @override 
  Widget build(BuildContext context){
  return Scaffold(
    body : Stack(
      children: [
        
        ////////////////////////////////////////////////////////////////////BACKGROUND//////////////////////////////////////////////////////
        Positioned.fill(
          child: Image.asset(
            'barubg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        
     


        SafeArea(
          child: Center( //supaye bisa ditengah
              child: Column(
                children: [
                  //LOGOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
                  const SizedBox(height: 80),
                  Image.asset(
                    'logorevisi.png',
                    width: 450,
                  ),

                  /////////////////////////////////////////////////////TULISANNYA/////////////////////////////////////////////////////////
                  const SizedBox(height: 60),
                  const Text(  
                    'WELCOME, TAJUL!',
                    textAlign: TextAlign.center,
                    style: TextStyle( 
                      color : Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                      height: 1.3,
                    ),
                  ),

                  /////////////////////////////////////////////////// priority customer //////////////////////////////////////////////////
                  const SizedBox (height : 10),
                  
                  Container(  
                    width : 240,
                    height : 35,
                    padding : const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    
                    child : Row( 
                      children : [ 
                        Align(
                          alignment : Alignment.center,
                          child: Container(  
                            width : 23,
                            height : 23,
                            decoration: BoxDecoration( 
                              shape : BoxShape.circle,
                              color : const Color.fromARGB(255, 207, 204, 17),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text( 
                          'PRIORITY CUSTOMER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ) 
                      ],
                    ),
                  ),
                  ////////////////////////////////////////////////////////////DALAM BOX///////////////////////////////////////
                  const SizedBox(height: 95),
                 
                  Container( 
                    width: 800,
                    padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow( 
                          color :  Colors.black.withOpacity(0.35),
                          spreadRadius : 16,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white.withOpacity(0.3),
                      border: Border.all( 
                        color: Colors.black.withOpacity(0.6),                    
                      ),
                    ),
                    child: Stack( 
                      alignment: Alignment.center,
                      children: [ 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(  
                              'goldrev.png',
                             
                            ),

                            const SizedBox(width: 30),
                            Image.asset(  
                              'cashrev.png',
                              
                            ),

                            const SizedBox(width: 30),
                            Image.asset(  
                              'conver.png',
                              
                            ),
                          ],
                        ),
                      ],
                    ),                    
                  ),

                  const SizedBox(height: 30),

                  Row(  
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      Image.asset(  
                        'transferrev.png',
                       
                      ),

                      const SizedBox(width: 30),
                      Image.asset(  
                        'depositrev.png',
                       
                      ),

                      const SizedBox(width: 40),
                      Image.asset(  
                        'balancerev.png',
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

      ],
    ),
  );
  }
}