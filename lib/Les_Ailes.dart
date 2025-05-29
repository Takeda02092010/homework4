import 'package:flutter/material.dart';
import 'package:homework4/lesailesinfo.dart';

List<Map<String, dynamic>> LesProducts = [
  {
    "name": "4 Friends Лестер чиз",
    "price": "138 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2024/08/02/hycTo7mVabPDo7bo7CWgqE7DED4fNRL6L0ItXVUr.webp"
  },
  {
    "name": "4 Friends Классик бургер",
    "price": "126 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2024/08/02/BxHZR8WKBYB9yUNkQthidncBVYPJVkMd60nBotxg.webp"
  },
  {
    "name": "Крылышки, 17 шт",
    "price": "108 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2024/05/01/176OEnpvQo1aJ43aF8nX2ZxFWVt0puHJjwk3z2W6.webp"
  },
  {
    "name": "Острые крылышки, 17 шт",
    "price": "108 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2024/05/01/5jph5BXv4keEY3SKRwv9JfvBQwAlVKYuCpBuGvXl.webp"
  },
  {
    "name": "Куриные наггетсы, 5 шт",
    "price": "20 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2023/01/24/Yf0tksk8T27V4GgT2heBeQtvWQZMc8FYSXTOFMqO.webp"
  },
  {
    "name": "Куриные шарики с сыром, 5 шт",
    "price": "23 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2024/05/01/5jph5BXv4keEY3SKRwv9JfvBQwAlVKYuCpBuGvXl.webp"
  },
  {
    "name": "Биг бокс",
    "price": "33 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2022/02/16/ktJIGPN7f6EOoEhEaHdOIW1QRG5ynEhs8W2euf3a.webp"
  },
  {
    "name": "Лестер чиз",
    "price": "29 000 сум",
    "image":
        "https://api.lesailes.uz/storage/products/2022/02/16/KEV3xxxi4jqY7wsijj5F1JX1CiIpdu2p1oS1R4uK.webp"
  }
];

class Lesailes extends StatelessWidget {
  const Lesailes({Key? key, required Map<String, dynamic> product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: InkWell(
          child: Container(
            width: 200.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Row(
              children: [
                Icon(Icons.location_on_outlined, color: Colors.white),
                SizedBox(width: 8),
                Text("Укажите свой адрес",
                    style: TextStyle(fontSize: 17.0, color: Colors.white)),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child:
                const Icon(Icons.apps_outlined, size: 20.0, color: Colors.grey),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Text(
                    "Сеты",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Text(
                    "Курочка",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Text(
                    "Снеки",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Text(
                    "Лестеры",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Сеты",
              style: TextStyle(fontSize: 35.0),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: LesProducts.length,
              itemBuilder: (context, index) {
                final product = LesProducts[index];
                return InkWell(
                  onTap: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsPage(product: product),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.network(
                            product['image'],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  product['price'],
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
