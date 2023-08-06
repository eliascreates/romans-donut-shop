class DonutModel {
  final String imgSrc;
  final String name;
  final String description;
  final double price;
  final String type;

  DonutModel({
    required this.imgSrc,
    required this.name,
    required this.description,
    required this.price,
    required this.type,
  });

  static List<DonutModel> donuts = [
    DonutModel(
        imgSrc: 'assets/donuts/donut_classic1.png',
        name: 'Strawberry Sprinkled Glazed',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'classic'),
    DonutModel(
      imgSrc: 'assets/donuts/donut_classic2.png',
      name: 'Chocolate Glazed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 12.99,
      type: 'classic',
    ),
    DonutModel(
        imgSrc: 'assets/donuts/donut_classic3.png',
        name: 'Chocolate Dipped Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 12.99,
        type: 'classic'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_classic4.png',
        name: 'Cinamon Glazed Glazed',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 12.99,
        type: 'classic'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_classic5.png',
        name: 'Sugar Glazed Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'classic'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_sprinkled1.png',
        name: 'Halloween Chocolate Glazed',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 12.99,
        type: 'sprinkled'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_sprinkled2.png',
        name: 'Party Sprinkled Cream',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'sprinkled'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_sprinkled3.png',
        name: 'Chocolate Glazed Sprinkled',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'sprinkled'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_sprinkled4.png',
        name: 'Strawbery Glazed Sprinkled',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 12.99,
        type: 'sprinkled'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_sprinkled5.png',
        name: 'Reese\'s Sprinkled',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 13.99,
        type: 'sprinkled'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_stuffed1.png',
        name: 'Brownie Cream Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'stuffed'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_stuffed2.png',
        name: 'Jelly Stuffed Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 12.99,
        type: 'stuffed'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_stuffed3.png',
        name: 'Caramel Stuffed Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 2.59,
        type: 'stuffed'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_stuffed4.png',
        name: 'Maple Stuffed Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.99,
        type: 'stuffed'),
    DonutModel(
        imgSrc: 'assets/donuts/donut_stuffed5.png',
        name: 'Glazed Jelly Stuffed Doughnut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
        price: 11.50,
        type: 'stuffed')
  ];
}
