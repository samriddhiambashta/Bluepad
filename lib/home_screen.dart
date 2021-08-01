import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();
  String message = "";
  int counter1 = 0;
  int counter2 = 0;
  bool val = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(listen);
  }

  void listen() {
    if (_controller.position.pixels > 850) {
      setState(() {
        val = false;
      });
    } else {
      setState(() {
        val = true;
      });
    }

    //else
    //val=true;
    if (_controller.position.atEdge) {
      if (_controller.position.pixels == 0) {
        print('HI');
      } else {
        message = 'You have reached bottom of screen';
      }
    } else
      message = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Visibility(
        visible: val == true ? true : false,
        child: Container(
          width: double.infinity,
          height: 40.0,
          color: Colors.white,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 100.0,
                child: IconButton(
                  icon: Image(
                    image: AssetImage('assets/like1.png'),
                  ),
                  onPressed: () {
                    setState(() {
                      counter1++;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 100.0,
              ),
              Container(
                width: 100.0,
                color: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.comment,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      counter2++;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Text(
          'Bluepad',
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w800,
              fontSize: 25.0),
        )),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Home button clicked'),
                  ));
                },
              );
            },
          )
        ],

        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 5.0, right: 5.0),
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Crypto Investor Buys \$69 Million Beeple NFT Art Work',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'The latest news to do the rounds is about the investor from Singapore, has bought 69 Million Beeple NFT. Now, that sounds too interesting. However, he is not ready to divulge his real name. I a world like ours, anyone can attack him for his funds. I just learnt, that this wealthy investor goes by the name Metakovan. It is a record of sorts in the bitcoin genre. The record-braking digital artwork is connected to an image file, that is connected to a NFT. ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'You will be amazed to know how lucrative such bitcoins are getting today. Moreover, they are receiving rave reviews. Christie’s Auction House is behind this huge deal. Metakovan also happens to be the chief investor behind Metapurse. It is nothing, but a Crypto-based fund. It is also the largest NFT in the world. At least, that is what it claims to be. Metakovan has also given an interview on Google Hangouts, and states there, that it is one lucrative deal. It is a big investment. The art work in question is interesting. ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'It is a mosaic of 5,000 artworks. It took him the last 13 years to prepare it. Says, Mike Winkelmann, who goes by the artist whose name is Beeple. One can find a variety of images inside the mosaic artwork. There is Abraham Lincoln spanking baby Trump, and more interesting ones. The bidding happened on 25 February. If reports are to be believed, initially things were a bit mellow, however, it shot up in the last ten minutes. ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Monetization of NFTs',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Well, this is not the first time, Metakovan has done this. He has purchased more such Beeple artworks amounting to 2.2 million in December 2020. Moreover, he fractionalized them and locked them with blockchain. No one even got a whiff, of what he was up to. The entire episode has created a sudden gripping interest in NFTs. ',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Winkelmann is not ready to divulge any further details yet. Well, Metakovan himself is not planning to sell his shares. This is a historic feat that he has achieved. For the uninitiated, almost 20 million visitors were a part of the auction. And, there were 200 registrations for the bidding. Metakovan was one of them. He has made the payment through ether. This is also a first, for Christie’s. no one has ever received such a large payment in cryptocurrency, in a similar domain. ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'This is the third highest amount which has been paid for the artwork of a living artist. So, you can understand, how it is. The entire feeling is simply overwhelming. The amount, that Metakovan has invested in artwork can actually buy a few palaces in France. You could even buy a yacht or an aeroplane, with that amount of money. ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'It seems that the market is quite open now.  And, people like Metakovan can do the unimaginable. Metakovan says, that he has no house, or cars. He just loves art and the power of bitcoin. He packs it up and moves on. While the world gushes at him. ',
                style: TextStyle(fontSize: 18.0),
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '$counter1 Likes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      '$counter2 Comments',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                color: Colors.white,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      width: 100.0,
                      child: IconButton(
                        icon: Image(
                          image: AssetImage('assets/like1.png'),
                        ),
                        onPressed: () {
                          setState(() {
                            counter1++;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.comment,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            counter2++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  height: 30.0,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                      child: Text(
                    message,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
