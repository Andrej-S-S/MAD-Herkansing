import 'package:flutter/material.dart';
import '../models/News.dart';
import '../components/news_item.dart';

class NewsOverviewPage extends StatefulWidget {
  const NewsOverviewPage({super.key});

  @override
  State<NewsOverviewPage> createState() => _NewsOverwiewPageState();
}

class _NewsOverwiewPageState extends State<NewsOverviewPage> {
  List<News> loadedNews = [
    News(
      id: 'p1',
      title: 'Most Clicked On',
      datum: '30-01-2023',
      inleiding: '',
      tekst:
          'Shell heeft in 2022 een recordwinst van 39,9 miljard dollar (36,3 miljard euro) geboekt. Het bedrijf profiteerde vorig jaar van de hogere olie- en gasprijzen.',
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.BFCsN2IcAWgdKU1XbBJ3CwHaE7&pid=Api&P=0',
    ),
    News(
      id: 'p2',
      title: 'Trending Now',
      datum: '31-01-2023',
      inleiding: '',
      tekst:
          'Nu de vuilniszakken zich opstapelen in de straten van Utrecht, hebben collegas van gemeentediensten elders in het land ook besloten de komende weken het werk neer te leggen.',
      imageUrl:
          'https://media.nu.nl/m/n0yxei8aklzv_wd854/vuilnis-stapelt-zich-op-in-utrecht-stakingen-uitgebreid-naar-rest-van-het-land.jpg',
    ),
    News(
      id: 'p3',
      title: 'War News',
      datum: '01-01-2023',
      inleiding: '',
      tekst:
          'Het Europees Parlement (EP) heeft donderdag de onschendbaarheid van twee leden ingetrokken. Het gaat om de Belg Marc Tarabella en de Italiaan Andrea Cozzolino, die mogelijk betrokken zijn bij het corruptieschandaal in het EP.',
      imageUrl:
          'https://media.nu.nl/m/xvfx9asavg3t_wd854/twee-betrokkenen-corruptieschandaal-europees-parlement-mogelijk-vervolgd.jpg',
    ),
    News(
      id: 'p4',
      title: 'Environment News',
      datum: '02-01-2023',
      inleiding: '',
      tekst:
          'Mediahuis neemt de verkoop van advertentieruimte op de tv-zenders van Talpa Network niet over. Door het afketsen van de fusie tussen Talpa en RTL Nederland gaat de deal niet door. Dat bevestigt een Talpa-woordvoerder aan NU.nl.',
      imageUrl:
          'https://media.nu.nl/m/84lxf1zacnh4_wd854/mediahuis-neemt-advertentieverkoop-van-talpa-niet-over-na-mislukken-fusie.jpg',
    ),
    News(
      id: 'p4',
      title: 'Education News',
      datum: '03-01-2023',
      inleiding: '',
      tekst:
          'Studentenorganisaties willen een tijdelijke rem op de toestroom van internationale studenten. "Die toestroom is momenteel explosief", zegt Terri van der Velden, woordvoerder van koepelorganisatie Interstedelijk Studenten Overleg (ISO). Daardoor gaat de kwaliteit van het onderwijs achteruit en wordt de werkdruk voor docenten almaar hoger',
      imageUrl:
          'https://media.nu.nl/m/ja6xwueafyas_wd854/studentenorganisaties-willen-tijdelijke-rem-op-komst-internationale-studenten.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StraksNL'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.white10, Colors.white12])),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
                itemCount: loadedNews.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) => NewsItem(
                      id: loadedNews[i].id,
                      title: loadedNews[i].title,
                      imageUrl: loadedNews[i].imageUrl,
                      datum: loadedNews[i].datum,
                      tekst: loadedNews[i].tekst,
                    )),
          ),
        ));
  }
}
