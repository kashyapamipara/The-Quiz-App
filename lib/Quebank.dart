import 'Q.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';


class Quebank{
  int _no=0;
  List<Q> _qa=[

    Q(q2: "Sachin is a cricketer??", a: true),
    Q(q2: "Mr. Narendra Modi is our health minister??", a: false),
    Q(q2: "whats app is a sports app", a: false), Q(q2: "my name is kashyap??", a: true),
    Q(q2: "the shape of earth is round?", a: true),
    Q(q2: "Sachin is a cricketer??", a: true),
    Q(q2: "Mr. Narendra Modi is our health minister??", a: false),
    Q(q2: "whats app is a sports app", a: false), Q(q2: "my name is kashyap??", a: true),
    Q(q2: "the shape of earth is round?", a: true),


  ];

  bool isFinished() {
    if (_no >= _qa.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _no = 0;
  }
  void getNo()
  {
    if(_no<_qa.length-1){
      _no++;
    }
    else{
      // Alert( title: "RFLUTTER", desc: "Flutter is awesome.").show();
    }
  }

  String myque(){
    return (_qa[_no].q1);
  }
  bool getans(){
    return (_qa[_no].ans);
  }
}