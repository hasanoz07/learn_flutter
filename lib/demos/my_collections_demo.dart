import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
 late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items=Collectiontems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility.paddingSymetric,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  }) : _model = model, super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility.paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility.padingGeneral,
          child: Column(
            
            children: [
              Expanded(child: Container(width: MediaQuery.of(context).size.width,child: Image.network(_model.imagePath,fit: BoxFit.cover,))),
              Padding(
                padding: PaddingUtility.paddingTop,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text(_model.price.toString() + " ETH")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(this.imagePath, this.title, this.price);
}
class PaddingUtility{
  static final paddingTop=EdgeInsets.only(top: 10);
 static final paddingBottom=EdgeInsets.only(bottom: 40);
 static final padingGeneral=EdgeInsets.all( 20);
 static final paddingSymetric=EdgeInsets.symmetric(horizontal: 15);


}
class ProjectImageUrl{
static const String imageUrl="https://i.picsum.photos/id/898/200/300.jpg?hmac=t4CBtj0-seR5dcy3U9f3RETPJo3tVYgUSvwcMV-cL-o";


}
class Collectiontems{
  late final List<CollectionModel> items;
  Collectiontems(){
    items = <CollectionModel>[
      CollectionModel(ProjectImageUrl.imageUrl,
          "Abstract Art1", 3.4),
      CollectionModel(ProjectImageUrl.imageUrl,
          "Abstract Art2", 3.4),
      CollectionModel(ProjectImageUrl.imageUrl,
          "Abstract Art3", 3.4),
      CollectionModel(ProjectImageUrl.imageUrl,
          "Abstract Art4", 3.4),
      CollectionModel(ProjectImageUrl.imageUrl,
          "Abstract Art5", 3.4),
    ];
  }
}