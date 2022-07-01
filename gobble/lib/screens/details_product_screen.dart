import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/productcontroller.dart';
import 'package:gobble/utils/Nav_bar.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/expandabletext.dart';
import 'package:gobble/utils/text_widget.dart';

import '../models/product.dart';

class DetailProductScreen extends StatefulWidget {
  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  final dataController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    int productId = Get.arguments;
    List<Product> productList = dataController.productList;
    Product productItem =
        productList.firstWhere((prod) => prod.id == productId);

    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: getHeight(70),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: getHeight(22.875),
                  backgroundColor:
                      Theme.of(context).colorScheme.background.withOpacity(0.9),
                  child: Center(
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).colorScheme.surface,
                        size: getHeight(28),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.9),
                  radius: getHeight(22.875),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.primary,
                        size: getHeight(28),
                      ),
                    ),
                  ),
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(getHeight(40)),
              child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHeight(45),
                      ),
                      topRight: Radius.circular(
                        getHeight(45),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(getHeight(10)),
                    child: Center(
                      child: SmallText(
                        text: productItem.name,
                        color: colorScheme.surface,
                        fontSize: 24,
                        weight: FontWeight.w600,
                      ),
                    ),
                  )),
            ),
            pinned: true,
            backgroundColor: colorScheme.onBackground,
            expandedHeight: getHeight(350),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                productItem.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: getWidth(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getWidth(72),
                        height: getHeight(36),
                        margin: EdgeInsets.all(getHeight(10)),
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: getWidth(20),
                            ),
                            SizedBox(
                              width: getWidth(5),
                            ),
                            SmallText(
                              text: '4.9',
                              color: Colors.white,
                              fontSize: 20,
                            )
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: SmallText(
                          text: 'write a review',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: colorScheme.primary.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(5),
                  ),
                  SingleChildScrollView(
                    child: ExpandableText(
                      text: productItem.description,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(getHeight(15)),
        width: getWidth(325),
        height: getHeight(52),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHeight(30),
                ),
                color: colorScheme.onBackground.withOpacity(0.3),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove,
                      size: getHeight(28),
                      color: Colors.black,
                    ),
                  ),
                  SmallText(
                    text: 0.toString(),
                    color: colorScheme.surface,
                    fontSize: 24,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: getHeight(28),
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getHeight(72),
              child: RaisedButton(
                elevation: getHeight(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getWidth(15),
                  ),
                ),
                child: SmallText(
                  text: 'Add to Cart',
                  color: Colors.white,
                  fontSize: 20,
                  weight: FontWeight.w500,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 'Layers of vulnerability are handled inside the orphan grouping as one technique for giving descriptive insight into the context of the OVC. There appear to be some implicit classification systems for orphans, such as the nature of their caregivers, such as extended families, foster parents, community caregivers, child-headed households, and those in institutional care, the level of additional assistance required, and the distinction between maternal, paternal, and double orphans. Vulnerability, according to Evans (2013), is far more difficult to characterize. The difficulty grows when it is noted that this definition must guide work with children in a variety of situations throughout the world while avoiding being seen as stigmatizing. Children who live in households where one or more people are ill, dying, or deceased; children who live in households that receive orphans; children whose caregivers are too ill to care for them; and children living with very old and frail caregivers are some of the identifiers listed by World Vision (2006).Kenyan consultative; conference characterized children as vulnerable if they lived in households with a chronically sick parent or caregiver, as well as in terms of access to important resources such as food, shelter, education, psycho-social and emotional support, and love. These categories are concerned with HIV-related issues. According to Nguefack, Ourtching, Gregory, and Priso (2014), there are a lot of things to look at that are more general about the child environment, like poverty, access to housing, education, and other basic services, handicap, drought effect, stigma, and political repression. All of these things could make a child more likely to get sick.2.2.2 ORPHAN AND VULNERABLE CHILDREN IN NIGERIA According to the Nigeria Country Report (2004), an orphan is a kid under the age of 18 whose mother (maternal orphan), father (paternal orphan), or both parents (double orphan) are deceased. A kid is considered vulnerable when he or she is at a higher risk of experiencing poor consequences than the typical youngster in a defined society. Malnutrition, increased morbidity and mortality, poor school attendance and completion rate, and increased risk of abuse and psychological effects are all negative outcomes. According to Nigeria National Plan of Action on Orphans and Vulnerable Children (2007), the categories of children who may be vulnerable are not complete, but for working purposes, a child is defined as a male or girl under the age of 18. An orphan is a kid (under the age of 18) who has lost one or both parents, regardless of the cause of death. People who have lost both parents are referred to as "double orphans," whereas the meaning of vulnerability differs from society to civilization and is community-specific.Nevertheless, the Federal Ministry of Social Development (2007) provides some key indicators determining children vulnerability including children that are: '
