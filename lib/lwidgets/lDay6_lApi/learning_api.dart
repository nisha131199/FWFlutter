import 'package:flutter/material.dart';
import '../../data/model/product.dart';
import '../../data/network/service.dart';

class LApi extends StatefulWidget {
  const LApi({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Api(products: fetchProducts());
  }
}

class _Api extends State<LApi> {
  final Future<List<Product>>? products;
  _Api({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Navigation")),
        body: Center(
          child: FutureBuilder<List<Product>>(
            future: products, builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData ?
            ProductBoxList(items: snapshot.data!)
                : const Center(child: CircularProgressIndicator());
            },
          ),
        )
    );
  }
}

class ProductBoxList extends StatelessWidget {
  final List<Product> items;
  ProductBoxList({Key? key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductBox(item: items[index]),
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => ProductPage(item: items[index]),
            ),
            );
          },
        );
      },
    );
  }
}

class ProductPage extends StatelessWidget {
  ProductPage({Key? key, required this.item}) : super(key: key);
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.item.title),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.title, style:
                            TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.body),
                          ],
                        )
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.title, style:TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.body),
                          ],
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}