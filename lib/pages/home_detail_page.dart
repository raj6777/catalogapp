import 'package:flutter_catalog/Widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :assert(catalog!=null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color:context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog),
          ],
        ).p32(),
      ),

      body:SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag:Key(catalog.id.toString()),
                child: Image.network(catalog.imageUrl)
            ).h32(context),
            Expanded(child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(context.accentColor).bold.make(),
                    catalog.desc.text.caption(context).xl.make(),
                    10.heightBox,
                  " Lord Ipsum suspendisse sed accumsan tellus. "
    "Nam mollis, tellus vel viverra bibendum, quam mauris pellentesque lectus, a fermentum "
    "augue diam at eros. Vivamus sit amet dignissim dolor, non faucibus tortor. Morbi arcu "
    "justo, volutpat ut auctor sed, malesuada in ligula. Phasellu s et lectus orci.".text.caption(context).make().p16(),
                  ],
                ).py64(),
              ),
            ),),
          ],
        ),
      )
    );
  }
}
