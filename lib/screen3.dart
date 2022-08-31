import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class plantUIscreen extends StatefulWidget {
  plantUIscreen({Key? key}) : super(key: key);

  @override
  State<plantUIscreen> createState() => _FlatDesignScreen2State();
}

class _FlatDesignScreen2State extends State<plantUIscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.2,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 50,
                    ),
                    height: size.height * 0.2 - 27,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Oi, Ahmad!',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Image.asset('assets/images/logo.png')
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.green.withOpacity(0.23),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: 'Buscar',
                                hintStyle: TextStyle(
                                  color: Colors.green.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                //suffixIcon:SvgPicture.asset('assets/icons/search.svg'),
                                //usar ROW para resolver suffix com svg
                              ),
                            ),
                          ),
                          SvgPicture.asset('assets/icons/search.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TituloMais(
              title: 'Recomendado',
            ),
            ScrollPlant(),
            SizedBox(
              height: 10,
            ),
            TituloMais(
              title: 'Outras Plantas',
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8, bottom: 25),
              width: size.width * 0.8,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/bottom_img_1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollPlant extends StatelessWidget {
  const ScrollPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantaRecomendada(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
          PlantaRecomendada(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'EUA',
            price: 600,
            press: () {},
          ),
          PlantaRecomendada(
            image: 'assets/images/image_3.png',
            title: 'Angelina',
            country: 'China',
            price: 250,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TituloMais extends StatelessWidget {
  const TituloMais({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          LineText(text: title),
          Spacer(),
          FlatButton(
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            onPressed: () {},
            child: Text(
              'Mais',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantaRecomendada extends StatelessWidget {
  const PlantaRecomendada({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 16, top: 8, bottom: 25),
      width: size.width * 0.43,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(11),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.green.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: Colors.green.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'R\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LineText extends StatelessWidget {
  const LineText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: Colors.green.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
