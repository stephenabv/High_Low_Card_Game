import 'dart:math';

class CardStack {
  int cardindex = 0;
  List cardvalue = [
    ['assets/img/AC.png', 1],
    ['assets/img/AD.png', 1],
    ['assets/img/AH.png', 1],
    ['assets/img/AS.png', 1],
    ['assets/img/2C.png', 2],
    ['assets/img/2D.png', 2],
    ['assets/img/2H.png', 2],
    ['assets/img/2S.png', 2],
    ['assets/img/3C.png', 3],
    ['assets/img/3D.png', 3],
    ['assets/img/3H.png', 3],
    ['assets/img/3S.png', 3],
    ['assets/img/4C.png', 4],
    ['assets/img/4D.png', 4],
    ['assets/img/4H.png', 4],
    ['assets/img/4S.png', 4],
    ['assets/img/5C.png', 5],
    ['assets/img/5D.png', 5],
    ['assets/img/5H.png', 5],
    ['assets/img/5S.png', 5],
    ['assets/img/6C.png', 6],
    ['assets/img/6D.png', 6],
    ['assets/img/6H.png', 6],
    ['assets/img/6S.png', 6],
    ['assets/img/7C.png', 7],
    ['assets/img/7D.png', 7],
    ['assets/img/7H.png', 7],
    ['assets/img/7S.png', 7],
    ['assets/img/8C.png', 8],
    ['assets/img/8D.png', 8],
    ['assets/img/8H.png', 8],
    ['assets/img/8S.png', 8],
    ['assets/img/9C.png', 9],
    ['assets/img/9D.png', 9],
    ['assets/img/9H.png', 9],
    ['assets/img/9S.png', 9],
    ['assets/img/10C.png', 10],
    ['assets/img/10D.png', 10],
    ['assets/img/10H.png', 10],
    ['assets/img/10S.png', 10],
    ['assets/img/JC.png', 11],
    ['assets/img/JD.png', 11],
    ['assets/img/JH.png', 11],
    ['assets/img/JS.png', 11],
    ['assets/img/QC.png', 12],
    ['assets/img/QD.png', 12],
    ['assets/img/QH.png', 12],
    ['assets/img/QS.png', 12],
    ['assets/img/KC.png', 13],
    ['assets/img/KD.png', 13],
    ['assets/img/KH.png', 13],
    ['assets/img/KS.png', 13],
  ];

  List randomCard() {
    cardindex = Random().nextInt(13 * 4);
    return [cardvalue[cardindex][0], cardvalue[cardindex][1]];
  }
}
