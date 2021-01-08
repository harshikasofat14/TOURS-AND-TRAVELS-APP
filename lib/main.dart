import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    home: SecondPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'Anyer Beach',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jakarta,Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                        child: Text('<--Previous Page'),
                      onPressed: () {
                        Navigator.pop(context);
                  },
                    ),],
                ),
              ],
            ),
          ),

        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),

        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Anyer is one of West Java’s best kept-secrets as far as international tourists are concerned. Located on a peninsula on the south coast of West Java, about 91 km from the town of Ciamis, Pangandaran offers uniquely black and white sand, calm waved beaches and spectacular sunsets. The beach resort facing the Indian Ocean is 223 km from Bandung and 400 km from Jakarta, and lies halfway between Bandung and Yogyakarta.',
        style: TextStyle(
          fontSize: 18.0,
          fontFamily: 'IndieFlower',
          fontWeight: FontWeight.bold,
        ),
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: 'Tours & Travel',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tours & Travel'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/beach.jpeg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }


  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top:10.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bodySection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: Text('Next Page-->'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },

          ),
        ],
      ),
    );

    Widget dataSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'TOURS AND TRAVEL AVAILABLE ------->',
              style: TextStyle(
                fontSize: 35.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
        Image.asset(
        'assets/bandung.jpg',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
        ),
            Text('BANDUNG',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
        Text(
          'Bandung capital of Indonesia’s West Java province, is a large city set amid volcanoes and tea plantations. Its known for colonial and art deco architecture, a lively, university-town feel and – thanks to its 768m elevation – relatively cool tropical weather. Bandung is also a shopping destination, with fashion outlets clustered along Jalan Setiabudi and Jalan Riau in the Dago district.',
          style: TextStyle(
          fontSize: 18.0,
          color: Colors.grey,
          fontFamily: 'IndieFlower',
          fontWeight: FontWeight.bold,
        ),
        softWrap: true,
      ),
      ElevatedButton(
          child: Text('Select'),
          onPressed: (){}
        ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Image.asset(
              'assets/pangandaran.jpeg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('PANGANDARAN',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Text(
              'Popular shoreline destination offering lodging & dining, plus surfing, swimming & sunset views.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            ElevatedButton(
                child: Text('Select'),
                onPressed: (){}
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Image.asset(
              'assets/yogyakarta.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('YOGYAKARTA',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Text(
              'Yogyakarta is a central region on the Indonesian island of Java. Its capital, also called Yogyakarta, is a cultural hub known for its traditional crafts and performing arts. ',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            ElevatedButton(
                child: Text('Select'),
                onPressed: (){}
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Image.asset(
              'assets/lembang.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('LEMBANG',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Text(
              'Known for its hot spring resorts, Lembang is a highland area home to the Floating Market, a lakeside park with food vendors and craft shops on boats. The Bosscha Observatory hosts prebooked astronomy talks and stargazing. Tea and strawberry plantations offer visits with seasonal fruit picking, while horseback rides and animal feeding draw families to farm parks. Nearby Tangkuban Perahu volcano is popular for hiking. ',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            ElevatedButton(
                child: Text('Select'),
                onPressed: (){}
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),Image.asset(
              'assets/jakarta.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('JAKARTA',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Text(
              'Jakarta is the capital city of the Republic of Indonesia. Jakarta is a huge, sprawling metropolis, home to over 10 million people with diverse ethnic group backgrounds from all over Indonesia. During the day, the number increases with commuters making their way to work in the city and flock out again in the evenings.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            ElevatedButton(
                child: Text('Select'),
                onPressed: (){}
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),Image.asset(
              'assets/bali.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('BALI',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            Text(
              'Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple. To the south, the beachside city of Kuta has lively bars, while Seminyak, Sanur and Nusa Dua are popular resort towns. The island is also known for its yoga and meditation retreats. ',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            ElevatedButton(
                child: Text('Select'),
                onPressed: (){}
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
    ],),
      );


    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Tours & Travel'),
          centerTitle: true,
        ),

        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Image.asset(
              'assets/indonesia.jpg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text('Indonesia, officially the Republic of Indonesia, is a country in Southeast Asia and Oceania, between the Indian and Pacific oceans. It consists of more than seventeen thousand islands, including Sumatra, Java, Borneo, Sulawesi, and New Guinea.',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
            ),
              softWrap: true,
      ),
            dataSection,
            bodySection,
          ],
        ),
      ),
    );
  }
}




