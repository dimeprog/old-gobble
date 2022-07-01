import 'package:gobble/models/product.dart';

import '../../models/product.dart';

Product eba = Product(
    id: 25,
    createdAt: DateTime.parse("2022-06-13T13:49:57.331Z"),
    updatedAt: DateTime.parse("2022-06-13T13:49:57.332Z"),
    name: "Eba and Afang soup",
    description:
        "It is made with white rice cooked in a base of coconut milk and combined with shredded coconut meat, water, salt, raisins (optional), and sugar",
    slug: "Eba_and_Afang_soup",
    price: 2000,
    image:
        "https://www.willflyforfood.net/wp-content/uploads/2021/06/nigerian-food-garri.jpg.webp",
    category: "local",
    averageReview: 4);
Product amala = Product(
  id: 26,
  createdAt: DateTime.parse("2022-06-13T13:51:33.470Z"),
  updatedAt: DateTime.parse("2022-06-13T13:51:33.471Z"),
  name: "Amala and Ewedu soup",
  description:
      "It is made with white rice cooked in a base of coconut milk and combined with shredded coconut meat, water, salt, raisins (optional), and sugar",
  slug: "Amala_and_Ewedu_soup",
  price: 3000,
  image:
      "https://www.willflyforfood.net/wp-content/uploads/2021/06/nigerian-food-amala-and-ewedu.jpg.webp",
  category: "local",
  averageReview: 3.9,
);

List<Product> prodList = [amala, eba];

List<Map<String, dynamic>> prodRaw = [
  {
    "id": 25,
    "createdAt": "2022-06-13T13:49:57.331Z",
    "updatedAt": "2022-06-13T13:49:57.332Z",
    "name": "Eba and Afang soup",
    "description":
        "It is made with white rice cooked in a base of coconut milk and combined with shredded coconut meat, water, salt, raisins (optional), and sugar",
    "slug": "Eba_and_Afang_soup",
    "price": 2000,
    "image":
        "https://www.willflyforfood.net/wp-content/uploads/2021/06/nigerian-food-garri.jpg.webp",
    "category": "local",
    "averageReview": 4
  },
  {
    "id": 26,
    "createdAt": "2022-06-13T13:51:33.470Z",
    "updatedAt": "2022-06-13T13:51:33.471Z",
    "name": "Amala and Ewedu soup",
    "description":
        "It is made with white rice cooked in a base of coconut milk and combined with shredded coconut meat, water, salt, raisins (optional), and sugar",
    "slug": "Amala_and_Ewedu_soup",
    "price": 3000,
    "image":
        "https://www.willflyforfood.net/wp-content/uploads/2021/06/nigerian-food-amala-and-ewedu.jpg.webp",
    "category": "local",
    "averageReview": 3.9
  },
];
