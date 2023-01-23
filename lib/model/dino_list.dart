enum Category { carnivora, herbivora, omnivora }

class Dino {
  String imageAsset;
  String name;
  String price;
  Category category;
  bool isPopular;
  String desc;

  Dino({
    required this.imageAsset,
    required this.name,
    required this.price,
    required this.category,
    required this.isPopular,
    required this.desc,
  });
}

var dinoList = [
  Dino(
      imageAsset: 'images/dinos/brachiosaurus.png',
      name: 'Brachiosaurus',
      price: '599.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Brachiosaurus is a genus of sauropod dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was one of the largest land animals that ever existed, with some individuals estimated to have reached lengths of up to 85 feet (26 m) and heights of up to 22 feet (7 m) at the shoulder. Brachiosaurus is known for its long neck and front limbs that were longer than its hind limbs.'),
  Dino(
      imageAsset: 'images/dinos/dimetrodon.png',
      name: 'Dimetrodon',
      price: '25.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Dimetrodon is a genus of extinct synapsid that lived during the Permian period, around 295 to 272 million years ago. It was a large animal, with some species reaching up to 26 feet (8 m) in length. Dimetrodon is characterized by a large sail-like structure on its back, which was likely used to regulate body temperature. It was not a dinosaur, but an early relative of mammals and it was a predator.'),
  Dino(
      imageAsset: 'images/dinos/giganotosaurus.png',
      name: 'Giganotosaurus',
      price: '75.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Giganotosaurus is a genus of large theropod dinosaur that lived during the early Cenomanian age of the Late Cretaceous period, around 98 to 97 million years ago. It was one of the largest land predators ever existed, with some estimates suggesting that it may have been larger than the famous Tyrannosaurus rex. Giganotosaurus was a bipedal animal, with a large skull and powerful jaws.'),
  Dino(
      imageAsset: 'images/dinos/kentrosaurus.png',
      name: 'Kentrosaurus',
      price: '99.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Kentrosaurus is a genus of stegosaurid dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was a quadrupedal animal, with a small head and a short neck. It is known for the large, bony plates and spines on its back, which were likely used for protection and for display. Kentrosaurus was a herbivorous animal, and it likely used its small, leaf-shaped teeth to chew on low-lying vegetation.'),
  Dino(
      imageAsset: 'images/dinos/parasaurolophus.png',
      name: 'Parasaurolophus',
      price: '55.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Parasaurolophus is a genus of hadrosaurid dinosaur that lived during the Late Cretaceous period, around 76 to 74 million years ago. It was a large, quadrupedal animal, with a long head and a distinctive, curved crest on top of its skull. The crest was likely used for communication and display. Parasaurolophus was a herbivore, and it likely used its broad, flat teeth to grind up tough vegetation.'),
  Dino(
      imageAsset: 'images/dinos/pteranodon.png',
      name: 'Pteranodon',
      price: '44.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Pteranodon is a genus of pterosaur that lived during the Late Cretaceous period, around 85 to 70 million years ago. It was a large, flying reptile with a wingspan that could reach up to 20 feet (6 meters) or more. Pteranodon had a long, pointed beak, and a crest on its skull that varied in size and shape between males and females. Unlike other pterosaur, Pteranodons wings were formed by a skin and muscle membrane'),
  Dino(
      imageAsset: 'images/dinos/triceratops.png',
      name: 'Triceratops',
      price: '65.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Triceratops is a genus of herbivorous ceratopsid dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the last dinosaurs to exist before the mass extinction event that marked the end of the Mesozoic Era. Triceratops was a large, quadrupedal animal, with a long frill on its head and three horns; one above each eye and one on the nose.'),
  Dino(
      imageAsset: 'images/dinos/tyrannosaurus.png',
      name: 'Tyrannosaurus',
      price: '89.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Tyrannosaurus, commonly known as T. rex, is a genus of large theropod dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the largest and most fearsome predators of its time, with some estimates suggesting that it could reach lengths of up to 40-43 feet (12-13 m) and weigh up to 15,000 pounds (6800 kg). T. rex had a large head with powerful jaws lined with sharp teeth.'),
  Dino(
      imageAsset: 'images/dinos/velociraptor.png',
      name: 'Velociraptor',
      price: '20.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Velociraptor is a genus of dromaeosaurid dinosaur that lived during the Late Cretaceous period, around 75 to 71 million years ago. Despite being popularized in media as a large, intelligent and highly aggressive predator, in reality Velociraptor was a relatively small dinosaur, measuring about 6 feet (1.8 m) in length and weighing around 15 kg. They were bipedal and had a large sickle-shaped claw on each foot.'),
  Dino(
      imageAsset: 'images/dinos/brachiosaurus.png',
      name: 'Brachiosaurus',
      price: '599.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Brachiosaurus is a genus of sauropod dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was one of the largest land animals that ever existed, with some individuals estimated to have reached lengths of up to 85 feet (26 m) and heights of up to 22 feet (7 m) at the shoulder. Brachiosaurus is known for its long neck and front limbs that were longer than its hind limbs.'),
  Dino(
      imageAsset: 'images/dinos/dimetrodon.png',
      name: 'Dimetrodon',
      price: '25.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Dimetrodon is a genus of extinct synapsid that lived during the Permian period, around 295 to 272 million years ago. It was a large animal, with some species reaching up to 26 feet (8 m) in length. Dimetrodon is characterized by a large sail-like structure on its back, which was likely used to regulate body temperature. It was not a dinosaur, but an early relative of mammals and it was a predator.'),
  Dino(
      imageAsset: 'images/dinos/giganotosaurus.png',
      name: 'Giganotosaurus',
      price: '75.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Giganotosaurus is a genus of large theropod dinosaur that lived during the early Cenomanian age of the Late Cretaceous period, around 98 to 97 million years ago. It was one of the largest land predators ever existed, with some estimates suggesting that it may have been larger than the famous Tyrannosaurus rex. Giganotosaurus was a bipedal animal, with a large skull and powerful jaws.'),
  Dino(
      imageAsset: 'images/dinos/kentrosaurus.png',
      name: 'Kentrosaurus',
      price: '99.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Kentrosaurus is a genus of stegosaurid dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was a quadrupedal animal, with a small head and a short neck. It is known for the large, bony plates and spines on its back, which were likely used for protection and for display. Kentrosaurus was a herbivorous animal, and it likely used its small, leaf-shaped teeth to chew on low-lying vegetation.'),
  Dino(
      imageAsset: 'images/dinos/parasaurolophus.png',
      name: 'Parasaurolophus',
      price: '55.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Parasaurolophus is a genus of hadrosaurid dinosaur that lived during the Late Cretaceous period, around 76 to 74 million years ago. It was a large, quadrupedal animal, with a long head and a distinctive, curved crest on top of its skull. The crest was likely used for communication and display. Parasaurolophus was a herbivore, and it likely used its broad, flat teeth to grind up tough vegetation.'),
  Dino(
      imageAsset: 'images/dinos/pteranodon.png',
      name: 'Pteranodon',
      price: '44.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Pteranodon is a genus of pterosaur that lived during the Late Cretaceous period, around 85 to 70 million years ago. It was a large, flying reptile with a wingspan that could reach up to 20 feet (6 meters) or more. Pteranodon had a long, pointed beak, and a crest on its skull that varied in size and shape between males and females. Unlike other pterosaur, Pteranodons wings were formed by a skin and muscle membrane'),
  Dino(
      imageAsset: 'images/dinos/triceratops.png',
      name: 'Triceratops',
      price: '65.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Triceratops is a genus of herbivorous ceratopsid dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the last dinosaurs to exist before the mass extinction event that marked the end of the Mesozoic Era. Triceratops was a large, quadrupedal animal, with a long frill on its head and three horns; one above each eye and one on the nose.'),
  Dino(
      imageAsset: 'images/dinos/tyrannosaurus.png',
      name: 'Tyrannosaurus',
      price: '89.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Tyrannosaurus, commonly known as T. rex, is a genus of large theropod dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the largest and most fearsome predators of its time, with some estimates suggesting that it could reach lengths of up to 40-43 feet (12-13 m) and weigh up to 15,000 pounds (6800 kg). T. rex had a large head with powerful jaws lined with sharp teeth.'),
  Dino(
      imageAsset: 'images/dinos/velociraptor.png',
      name: 'Velociraptor',
      price: '20.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Velociraptor is a genus of dromaeosaurid dinosaur that lived during the Late Cretaceous period, around 75 to 71 million years ago. Despite being popularized in media as a large, intelligent and highly aggressive predator, in reality Velociraptor was a relatively small dinosaur, measuring about 6 feet (1.8 m) in length and weighing around 15 kg. They were bipedal and had a large sickle-shaped claw on each foot.'),
  Dino(
      imageAsset: 'images/dinos/brachiosaurus.png',
      name: 'Brachiosaurus',
      price: '599.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Brachiosaurus is a genus of sauropod dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was one of the largest land animals that ever existed, with some individuals estimated to have reached lengths of up to 85 feet (26 m) and heights of up to 22 feet (7 m) at the shoulder. Brachiosaurus is known for its long neck and front limbs that were longer than its hind limbs.'),
  Dino(
      imageAsset: 'images/dinos/dimetrodon.png',
      name: 'Dimetrodon',
      price: '25.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Dimetrodon is a genus of extinct synapsid that lived during the Permian period, around 295 to 272 million years ago. It was a large animal, with some species reaching up to 26 feet (8 m) in length. Dimetrodon is characterized by a large sail-like structure on its back, which was likely used to regulate body temperature. It was not a dinosaur, but an early relative of mammals and it was a predator.'),
  Dino(
      imageAsset: 'images/dinos/giganotosaurus.png',
      name: 'Giganotosaurus',
      price: '75.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Giganotosaurus is a genus of large theropod dinosaur that lived during the early Cenomanian age of the Late Cretaceous period, around 98 to 97 million years ago. It was one of the largest land predators ever existed, with some estimates suggesting that it may have been larger than the famous Tyrannosaurus rex. Giganotosaurus was a bipedal animal, with a large skull and powerful jaws.'),
  Dino(
      imageAsset: 'images/dinos/kentrosaurus.png',
      name: 'Kentrosaurus',
      price: '99.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Kentrosaurus is a genus of stegosaurid dinosaur that lived during the Late Jurassic period, around 150-145 million years ago. It was a quadrupedal animal, with a small head and a short neck. It is known for the large, bony plates and spines on its back, which were likely used for protection and for display. Kentrosaurus was a herbivorous animal, and it likely used its small, leaf-shaped teeth to chew on low-lying vegetation.'),
  Dino(
      imageAsset: 'images/dinos/parasaurolophus.png',
      name: 'Parasaurolophus',
      price: '55.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Parasaurolophus is a genus of hadrosaurid dinosaur that lived during the Late Cretaceous period, around 76 to 74 million years ago. It was a large, quadrupedal animal, with a long head and a distinctive, curved crest on top of its skull. The crest was likely used for communication and display. Parasaurolophus was a herbivore, and it likely used its broad, flat teeth to grind up tough vegetation.'),
  Dino(
      imageAsset: 'images/dinos/pteranodon.png',
      name: 'Pteranodon',
      price: '44.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Pteranodon is a genus of pterosaur that lived during the Late Cretaceous period, around 85 to 70 million years ago. It was a large, flying reptile with a wingspan that could reach up to 20 feet (6 meters) or more. Pteranodon had a long, pointed beak, and a crest on its skull that varied in size and shape between males and females. Unlike other pterosaur, Pteranodons wings were formed by a skin and muscle membrane'),
  Dino(
      imageAsset: 'images/dinos/triceratops.png',
      name: 'Triceratops',
      price: '65.99',
      category: Category.herbivora,
      isPopular: true,
      desc:
          'Triceratops is a genus of herbivorous ceratopsid dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the last dinosaurs to exist before the mass extinction event that marked the end of the Mesozoic Era. Triceratops was a large, quadrupedal animal, with a long frill on its head and three horns; one above each eye and one on the nose.'),
  Dino(
      imageAsset: 'images/dinos/tyrannosaurus.png',
      name: 'Tyrannosaurus',
      price: '89.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Tyrannosaurus, commonly known as T. rex, is a genus of large theropod dinosaur that lived during the Late Cretaceous period, around 68 to 66 million years ago. It was one of the largest and most fearsome predators of its time, with some estimates suggesting that it could reach lengths of up to 40-43 feet (12-13 m) and weigh up to 15,000 pounds (6800 kg). T. rex had a large head with powerful jaws lined with sharp teeth.'),
  Dino(
      imageAsset: 'images/dinos/velociraptor.png',
      name: 'Velociraptor',
      price: '20.99',
      category: Category.carnivora,
      isPopular: true,
      desc:
          'Velociraptor is a genus of dromaeosaurid dinosaur that lived during the Late Cretaceous period, around 75 to 71 million years ago. Despite being popularized in media as a large, intelligent and highly aggressive predator, in reality Velociraptor was a relatively small dinosaur, measuring about 6 feet (1.8 m) in length and weighing around 15 kg. They were bipedal and had a large sickle-shaped claw on each foot.'),
];
