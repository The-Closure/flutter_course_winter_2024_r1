main() {
  int counter = 10;
  counter = 5;
  // counter = 5.5;
  print(counter);

  double height = 150.5;
  height = 150;
  print(height);

  num width = 150;
  width = 10.5;
  width = 100;
  print(width);

  String name = "Mohammad";
  print(name);
  print(name.length);

  bool isGreater = true;
  isGreater = false;
  print(isGreater);

  var age = 10;
  // age = 20.20;
  print(age);

  dynamic anyThing = 50;
  anyThing = 100.100;
  anyThing = true;
  anyThing = "any thing";
  print(anyThing);

  const double pi = 3.14;
  // pi = 3.1425555555;
  print(pi);

  final String ipAddress;
  ipAddress = '192.168.1.1';
  // ipAddress = '192.5.5.5';

  List<String> names = ['Mohammad', 'Adnan', 'Muneer', 'Abd', 'Carmen'];
  print(names);
  print(names[2]);
  print(names.length);
  print(names.elementAt(2));

  Map<String, dynamic> user = {
    'name': "Mohammad",
    'age': 26,
    'address': 'Damascus',
    'number': 10,
    // true: true,
  };
  print(user);
  print(user['age']);
  print(user.keys.elementAt(2));
  print(user.values.elementAt(2));

  List<Map<String, dynamic>> nestedList = [
    {
      'name': "Adnan",
      'age': 20,
      'address': 'Homs',
    },
    {
      'name': "Muneer",
      'age': 22,
      'address': 'Aleppo',
    },
  ];
  print(nestedList.elementAt(0)['address']);
  print(nestedList.elementAt(0).values.elementAt(2));

  Map<String, dynamic> nestedMap = {
    'students': ['Mohammad', 'Adnan', 'Muneer', 'Abd', 'Carmen'],
    'grades': [60, 75, 80, 65, 75],
  };

  print(nestedMap['grades'].elementAt(2));
  print(nestedMap['grades'][2]);

  Map product = {
    "id": 1,
    "title": "Essence Mascara Lash Princess",
    "description":
        "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    "category": "beauty",
    "price": 9.99,
    "discountPercentage": 7.17,
    "rating": 4.94,
    "stock": 5,
    "tags": ["beauty", "mascara"],
    "brand": "Essence",
    "sku": "RCH45Q1A",
    "weight": 2,
    "dimensions": {
      "width": 23.17,
      "height": 14.43,
      "depth": 28.01,
    },
    "warrantyInformation": "1 month warranty",
    "shippingInformation": "Ships in 1 month",
    "availabilityStatus": "Low Stock",
    "reviews": [
      {
        "rating": 2,
        "comment": "Very unhappy with my purchase!",
        "date": "2024-05-23T08:56:21.618Z",
        "reviewerName": "John Doe",
        "reviewerEmail": "john.doe@x.dummyjson.com"
      },
    ],
    "returnPolicy": "30 days return policy",
    "minimumOrderQuantity": 24,
    "meta": {
      "createdAt": "2024-05-23T08:56:21.618Z",
      "updatedAt": "2024-05-23T08:56:21.618Z",
      "barcode": "9164035109868",
      "qrCode": "https://assets.dummyjson.com/public/qr-code.png"
    },
    "images": [
      "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"
    ],
    "thumbnail":
        "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png"
  };
  print(product["reviews"].elementAt(0)['comment']);
  print(product['meta']['qrCode']);
  print(product["dimensions"].keys.elementAt(2));

  List comments = [
    {
      "postId": 1,
      "id": 1,
      "name": "id labore ex et quam laborum",
      "email": "Eliseo@gardner.biz",
      "body":
          "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
    },
    {
      "postId": 1,
      "id": 2,
      "name": "quo vero reiciendis velit similique earum",
      "email": "Jayne_Kuhic@sydney.com",
      "body":
          "est natus enim nihil est dolore omnis voluptatem numquam\net omnis occaecati quod ullam at\nvoluptatem error expedita pariatur\nnihil sint nostrum voluptatem reiciendis et"
    },
    {
      "postId": 1,
      "id": 3,
      "name": "odio adipisci rerum aut animi",
      "email": "Nikita@garfield.biz",
      "body":
          "quia molestiae reprehenderit quasi aspernatur\naut expedita occaecati aliquam eveniet laudantium\nomnis quibusdam delectus saepe quia accusamus maiores nam est\ncum et ducimus et vero voluptates excepturi deleniti ratione"
    },
  ];
  print(comments[1]['email']);
  print(comments[1].values.elementAt(3));

  Map rceipe = {
    "id": 1,
    "name": "Classic Margherita Pizza",
    "ingredients": [
      "Pizza dough",
      "Tomato sauce",
      "Fresh mozzarella cheese",
      "Fresh basil leaves",
      "Olive oil",
      "Salt and pepper to taste",
    ],
    "instructions": [
      "Preheat the oven to 475°F (245°C).",
      "Roll out the pizza dough and spread tomato sauce evenly.",
      "Top with slices of fresh mozzarella and fresh basil leaves.",
      "Drizzle with olive oil and season with salt and pepper.",
      "Bake in the preheated oven for 12-15 minutes or until the crust is golden brown.",
      "Slice and serve hot."
    ],
    "prepTimeMinutes": 20,
    "cookTimeMinutes": 15,
    "servings": 4,
    "difficulty": "Easy",
    "cuisine": "Italian",
    "caloriesPerServing": 300,
    "tags": ["Pizza", "Italian"],
    "userId": 166,
    "image": "https://cdn.dummyjson.com/recipe-images/1.webp",
    "rating": 4.6,
    "reviewCount": 98,
    "mealType": [
      "Dinner",
    ]
  };
  print(rceipe["ingredients"][5]);

  Map carts = {
    "carts": [
      {
        "id": 1,
        "products": [
          {
            "id": 168,
            "title": "Charger SXT RWD",
            "price": 32999.99,
            "quantity": 3,
            "total": 98999.97,
            "discountPercentage": 13.39,
            "discountedTotal": 85743.87,
            "thumbnail":
                "https://cdn.dummyjson.com/products/images/vehicle/Charger%20SXT%20RWD/thumbnail.png"
          },
          {
            "id": 78,
            "title": "Apple MacBook Pro 14 Inch Space Grey",
            "price": 1999.99,
            "quantity": 2,
            "total": 3999.98,
            "discountPercentage": 18.52,
            "discountedTotal": 3259.18,
            "thumbnail":
                "https://cdn.dummyjson.com/products/images/laptops/Apple%20MacBook%20Pro%2014%20Inch%20Space%20Grey/thumbnail.png"
          },
        ],
        "total": 103774.85,
        "discountedTotal": 89686.65,
      },
    ],
  };
  print(carts['carts'][0]["products"][1]["price"]);
  print(carts['carts'].elementAt(0)["products"].elementAt(1)["price"]);
}
