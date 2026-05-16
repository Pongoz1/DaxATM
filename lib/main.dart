import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dax ATM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DaxAtmScreen(),
    );
  }
}

class DaxAtmScreen extends StatelessWidget{
  const DaxAtmScreen({super.key});

  @override 
  Widget build(BuildContext context){
  return Scaffold(
    body : Stack(
      children: [
        
        ////////////////////////////////////////////////////////////////////BACKGROUND//////////////////////////////////////////////////////
        Positioned.fill(
          child: Image.asset(
            'background.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        
     


        SafeArea(
          child: Center( //supaya bisa ditengah
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
                    'PLEASE SELECT YOUR\nACCESS METHOD',
                    textAlign: TextAlign.center,
                    style: TextStyle( 
                      color : Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      height: 1.3,
                    ),
                  ),

                  ////////////////////////////////////////////////////////////DALAM BOX///////////////////////////////////////
                  const SizedBox(height: 50),
                  Container( 
                    width: 700,
                    padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      border: Border.all( 
                        color: Colors.black.withOpacity(0.6),                    
                      ),
                    ),
                  
                    child: Column( 
                      children: [ 
                        Container( 
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration( 
                            border: Border.all ( 
                              color : Colors.white.withOpacity(1),
                            ),                        
                          ),
                          child: const Center(  
                            child: Text ( 
                              'CARDLESS ACCESS',
                              style: TextStyle( 
                                color : Colors.white,
                                fontSize : 20,
                                fontWeight : FontWeight.w700,
                                letterSpacing : 1.5,                        
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 22),
                        Row ( 
                          children: [
                            Expanded( 
                              child: SizedBox(
                    width : 360,
                    height : 120,
                    child : ElevatedButton (  
                      style : ElevatedButton.styleFrom  ( 
                        backgroundColor : Colors.white,
                        foregroundColor : Colors.black, 
                        shape: RoundedRectangleBorder( 
                          borderRadius: BorderRadius.circular(0)
                        ),
                        elevation : 8,

                      ),
                      onPressed: () {},
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(
                            Icons.face_retouching_natural,
                            size: 42,
                          ),
                          SizedBox(height: 10),
                          Text (  
                            'FACE ID',    
                            style : TextStyle( 
                              fontSize : 22,
                              fontWeight : FontWeight.w700,
                              letterSpacing : 1,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                            ),
                            const SizedBox(width: 40),
                            Expanded(  
                              child: SizedBox( 
                    width : 360,
                    height : 120,
                    child : ElevatedButton (  
                      style : ElevatedButton.styleFrom  ( 
                        backgroundColor : Colors.white,
                        foregroundColor : Colors.black, 
                        shape: RoundedRectangleBorder( 
                          borderRadius: BorderRadius.circular(0)
                        ),
                        elevation : 8,

                      ),
                      onPressed: () {},
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(
                            Icons.fingerprint,
                            size: 42,
                          ),
                          SizedBox(height: 10),
                          Text (  
                            'FINGERPRINT',    
                            style : TextStyle( 
                              fontSize : 22,
                              fontWeight : FontWeight.w700,
                              letterSpacing : 1,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                            ),
                          ],
                        ),                     
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  SizedBox( 
                    width : 360,
                    height : 120,
                    child : ElevatedButton (  
                      style : ElevatedButton.styleFrom  ( 
                        backgroundColor : Colors.white,
                        foregroundColor : Colors.black, 
                        shape: RoundedRectangleBorder( 
                          borderRadius: BorderRadius.circular(0)
                        ),
                        elevation : 8,

                      ),
                      onPressed: () {},
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(
                            Icons.credit_card,
                            size: 42,
                          ),
                          SizedBox(height: 10),
                          Text (  
                            'INSERT ATM CARD',    
                            style : TextStyle( 
                              fontSize : 22,
                              fontWeight : FontWeight.w700,
                              letterSpacing : 1,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                
          
                ],
              ),
          
          ),
        ),
      ],
    ),
  );
  }




  Widget _buildAccessButton({
    required IconData icons,
    required String label,
    required VoidCallback onTap,
  }) {
    return SizedBox (  
      height: 140,
      child : ElevatedButton(
        style : ElevatedButton.styleFrom ( 
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF7A5BA8),
          elevation : 6,
          shape : RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(0),

          ),
        ),
        onPressed : onTap,
        child: Column (  
          mainAxisAlignment: MainAxisAlignment.center,
          children : [
            Icon( 
              icons,
              size: 48,
            ),
            const SizedBox(height : 12),
            Text(  
              label,  
              style: const TextStyle (  
                fontSize : 22,
                fontWeight : FontWeight.w700,
                color : Color(0xFF4F5A8A),
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

