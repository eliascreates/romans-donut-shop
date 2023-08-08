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
          'Experience the delightful charm of our Strawberry Sprinkled Glazed donut. Indulge in the harmonious fusion of sweet strawberries and an irresistible glaze, topped with a sprinkling of colorful joy. Every bite is a burst of flavor that captures the essence of summer.',
      price: 11.99,
      type: 'classic',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_classic2.png',
      name: 'Chocolate Glazed Doughnut',
      description:
          'Elevate your senses with the divine indulgence of our Chocolate Glazed Doughnut. Immerse yourself in the velvety richness of chocolate, enveloped in a glossy glaze that glistens like a moonlit night. Each bite is an enchanting experience of pure cocoa bliss.',
      price: 12.99,
      type: 'classic',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_classic3.png',
      name: 'Chocolate Dipped Doughnut',
      description:
          'Embark on a journey of flavor with our Chocolate Dipped Doughnut. Immerse yourself in the decadence of luscious chocolate, gently embracing the dough with its silky touch. Each bite is a symphony of textures that will transport you to chocolate paradise.',
      price: 12.99,
      type: 'classic',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_classic4.png',
      name: 'Cinnamon Glazed Doughnut',
      description:
          'Indulge in the warmth of our Cinnamon Glazed Doughnut. Let the aromatic embrace of cinnamon take you on a nostalgic journey. The delicate glaze drizzled atop each doughnut is a dance of sweetness and spice, creating an experience that soothes the soul.',
      price: 12.99,
      type: 'classic',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_classic5.png',
      name: 'Sugar Glazed Doughnut',
      description:
          'Dive into the simple pleasure of our Sugar Glazed Doughnut. Each bite is a tender reminder of the classics – the soft, airy dough meets a delicate shower of sugar, creating a symphony of flavors that transcends time and captivates hearts.',
      price: 11.99,
      type: 'classic',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_sprinkled1.png',
      name: 'Halloween Chocolate Glazed',
      description:
          'Unveil the enchantment of our Halloween Chocolate Glazed donut. Immerse yourself in the spellbinding magic of rich chocolate, adorned with whimsical sprinkles that bring a playful charm to each bite. A bewitching treat that casts a spell of delight.',
      price: 12.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_sprinkled2.png',
      name: 'Party Sprinkled Cream',
      description:
          'Celebrate the joy of life with our Party Sprinkled Cream donut. Embark on a flavor adventure with the union of soft cream and a burst of vibrant sprinkles. Each bite is a festive occasion that will leave you dancing with delight.',
      price: 11.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_sprinkled3.png',
      name: 'Chocolate Glazed Sprinkled',
      description:
          'Experience the symphony of indulgence with our Chocolate Glazed Sprinkled donut. Dive into the velvety embrace of chocolate, enhanced by a playful medley of sprinkles that add a delightful crunch to every bite. A sensory adventure that tantalizes the taste buds.',
      price: 11.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_sprinkled4.png',
      name: 'Strawberry Glazed Sprinkled',
      description:
          'Awaken your senses with our Strawberry Glazed Sprinkled donut. Immerse yourself in the delicate sweetness of ripe strawberries, embraced by a glaze that captures their essence. Each bite is a fruity journey that ignites the palate.',
      price: 12.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_sprinkled5.png',
      name: 'Reese\'s Sprinkled',
      description:
          'Experience the perfect fusion of sweet and salty with our Reese\'s Sprinkled donut. Immerse yourself in the harmony of velvety peanut butter and irresistible chocolate, adorned with playful sprinkles that add an extra layer of delight. Each bite is a symphony of flavors.',
      price: 13.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_stuffed1.png',
      name: 'Brownie Cream Doughnut',
      description:
          'Satisfy your cravings with our Brownie Cream Doughnut. Immerse yourself in the decadent embrace of brownie-infused cream, nestled within a soft dough. Each bite is a journey of contrasts, with the fudgy richness of brownie meeting the delicate sweetness of the dough.',
      price: 11.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_stuffed2.png',
      name: 'Jelly Stuffed Doughnut',
      description:
          'Embark on a delightful adventure with our Jelly Stuffed Doughnut. Let the soft dough envelop you in a gentle hug, revealing a hidden treasure of vibrant, fruity jelly within. Each bite is a playful surprise that dances on the palate.',
      price: 12.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_stuffed3.png',
      name: 'Caramel Stuffed Doughnut',
      description:
          'Delight in the luscious indulgence of our Caramel Stuffed Doughnut. Allow the warm, velvety caramel to envelop your senses as you bite into the soft dough. Each bite is a journey of sweet comfort that soothes the soul.',
      price: 2.59,
      type: 'stuffed',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_stuffed4.png',
      name: 'Maple Stuffed Doughnut',
      description:
          'Indulge in the rich allure of our Maple Stuffed Doughnut. Let the sweet and velvety maple filling envelop your senses as each bite takes you on a journey to a cozy cabin in the woods. Each bite is a symphony of warmth and sweetness.',
      price: 11.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgSrc: 'assets/donuts/donut_stuffed5.png',
      name: 'Glazed Jelly Stuffed Doughnut',
      description:
          'Delight in the delectable wonders of our Glazed Jelly Stuffed Doughnut. Savor the perfect balance of a soft, pillowy dough encasing a generous filling of velvety jelly. Each bite is a symphony of textures and flavors that will leave you craving for more.',
      price: 11.50,
      type: 'stuffed',
    ),
  ];
}
