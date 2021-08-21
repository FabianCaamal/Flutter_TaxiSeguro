// import 'package:flutter/material.dart';

// import 'package:taxi_seguro/pages/maritza/button_widget.dart';
// import 'package:taxi_seguro/pages/maritza/home.page.dart';

// import 'package:introduction_screen/introduction_screen.dart';

// class OnboardingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => SafeArea(
//         child: IntroductionScreen(
//           pages: [ 
//             PageViewModel(
//               title: 'Accept a Job',
//               body: 'Lorem ipsum dolor sit amet, consecutetur adipiscing elit. Nullam ac vestibulum',
//               image: buildImage('assets/a1.png'),
//               footer: TextButton(
//               onPressed:(){
//               },
//               child: new Text("Skip", style: TextStyle(fontSize: 20),)
//             ),
//               decoration: getPageDecoration(),
//             ),
//             PageViewModel(
//               title: 'Tracking Realtime',
//               body: 'Lorem ipsum dolor sit amet, consecutetur adipiscing elit. Nullam ac vestibulum',
//               image: buildImage('assets/a2.png'),
//               footer: TextButton(
//               onPressed:(){
//               },
//               child: new Text("Skip", style: TextStyle(fontSize: 20),)
//             ),
//               decoration: getPageDecoration(),
//             ),
//             PageViewModel(
//               title: 'Earn Money',
//               body: 'Lorem ipsum dolor sit amet, consecutetur adipiscing elit. Nullam ac vestibulum',
//               footer: ButtonWidget(
//               ),
//               image: buildImage('assets/a3.png'),
//               decoration: getPageDecoration(),
//             ),
//           ],
//           done: Text('', style: TextStyle(fontWeight: FontWeight.w600)),
//           onDone: (){
//           },
//           onSkip: (){
//           },
//           showSkipButton: false,
//           // isProgressTap: false,
//           // isProgress: false,
//           showNextButton: false,
//           // freeze: true,
//           // animationDuration: 1000,
//         ),
//       );

//   void goToHome(context) => Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => HomePage()),
//       );

//   Widget buildImage(String path) =>
//       Center(child: Image.asset(path, width: 350));

//   DotsDecorator getDotDecoration() => DotsDecorator(
//         color: Color(0xFFBDBDBD),
//         activeColor: Colors.amber,
//         size: Size(10, 12),
//         activeSize: Size(12, 10),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30),
//         ),
//       );

//   PageDecoration getPageDecoration() => PageDecoration(
//         titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//         bodyTextStyle: TextStyle(fontSize: 20),
//         descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
//         imagePadding: EdgeInsets.all(24),
//         pageColor: Colors.white,
//       );
// }
