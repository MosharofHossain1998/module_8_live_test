import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> DSLRicon = [
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg',
    'https://cdn.pixabay.com/photo/2017/12/28/22/03/lens-3046269_640.jpg',
    'https://cdn.vox-cdn.com/thumbor/JH2wyRauqPM16zCoLM_jwB5deS8=/0x0:2040x1360/2000x1333/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/19938420/DSCF8146.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://www.findingtheuniverse.com/wp-content/uploads/2017/01/Best-Travel-Camera.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg',
    'https://cdn.pixabay.com/photo/2017/12/28/22/03/lens-3046269_640.jpg',
    'https://cdn.vox-cdn.com/thumbor/JH2wyRauqPM16zCoLM_jwB5deS8=/0x0:2040x1360/2000x1333/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/19938420/DSCF8146.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://www.findingtheuniverse.com/wp-content/uploads/2017/01/Best-Travel-Camera.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return orientation == Orientation.landscape? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView.builder(
                      itemCount: DSLRicon.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context,index){
                        return Card(
                          child: Center(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Image.network(
                                  DSLRicon[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                )

              ],
            ): Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: ListView.builder(
                      itemCount: DSLRicon.length,
                      itemBuilder: (context,index){
                        return Card(
                          child: Center(
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Image.network(
                                DSLRicon[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),


              ],
            );

          },

        ),

      ),

    );
  }
}
