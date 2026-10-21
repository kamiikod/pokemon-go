import '../models/pokemon.dart';


final List<Pokemon> dataPokemon = [
  // 1
  Pokemon(
    name: "Bulbasaur",
    image: "assets/bulbasaur.jpg",
    type: "Grass/Poison",
    description:
        "Sejak lahir, terdapat benih tanaman misterius yang tertanam di punggungnya. Seiring Bulbasaur menyerap sinar matahari dan bertumbuh besar, benih tersebut perlahan berkembang menjadi tunas yang dipenuhi nutrisi alami.\n\nBulbasaur sangat menyukai tempat-tempat hangat yang disinari matahari secara langsung. Ketika merasa terancam atau hendak menyerang, ia dapat memanjangkan sulur-sulur kuat dari dalam tubuhnya untuk mencambuk atau mengikat musuh.",
    basePower: 318,
    skills: ["Vine Whip", "Razor Leaf", "Sleep Powder", "Solar Beam"],
    movies: [
      "https://img.youtube.com/vi/c2edLO4GxGs/hqdefault.jpg", // Mewtwo Strikes Back: Evolution
      "https://img.youtube.com/vi/Ux6WBTgMhls/hqdefault.jpg", // Detective Pikachu (Trailer 1)
      "https://img.youtube.com/vi/nKDWO2qY1Pk/hqdefault.jpg", // Destiny Deoxys
    ],
    height: "0.7 m",
    weight: "6.9 kg",
    category: "Seed Pokémon",
    ability: "Overgrow",
    weaknesses: ["Fire", "Psychic", "Flying", "Ice"],
    stats: {
      "HP": 45,
      "Attack": 49,
      "Defense": 49,
      "Sp. Atk": 65,
      "Sp. Def": 65,
      "Speed": 45,
    },
    evolutions: ["Bulbasaur", "Ivysaur", "Venusaur"],
  ),

  // 2
  Pokemon(
    name: "Charmander",
    image: "assets/charmander.jpg",
    type: "Fire",
    description:
        "Api di ujung ekornya adalah indikator utama dari emosi dan vitalitas hidupnya. Saat Charmander merasa senang atau bersemangat, apinya akan membara terang, sedangkan saat ia lemah atau sakit, apinya akan meredup hingga hampir padam.\n\nJika kondisi tubuh Charmander sangat prima, ekornya bahkan bisa memancarkan kepulan asap tipis dengan nyala api yang cukup panas untuk melelehkan benda di sekitarnya. Hujan deras bisa menjadi ancaman serius bagi keselamatan fisiknya.",
    basePower: 309,
    skills: ["Scratch", "Ember", "Flamethrower", "Fire Spin"],
    movies: [
      "https://img.youtube.com/vi/r12w4iRBLp4/hqdefault.jpg", // Pokémon the Movie: I Choose You!
      "https://img.youtube.com/vi/8Tx9htcJFf0/hqdefault.jpg", // Pokémon: The First Movie
      "https://img.youtube.com/vi/PHap21gpziY/hqdefault.jpg", // Detective Pikachu (Trailer 2)
    ],
    height: "0.6 m",
    weight: "8.5 kg",
    category: "Lizard Pokémon",
    ability: "Blaze",
    weaknesses: ["Water", "Ground", "Rock"],
    stats: {
      "HP": 39,
      "Attack": 52,
      "Defense": 43,
      "Sp. Atk": 60,
      "Sp. Def": 50,
      "Speed": 65,
    },
    evolutions: ["Charmander", "Charmeleon", "Charizard"],
  ),

  // 3
  Pokemon(
    name: "Dragonite",
    image: "assets/dragonite.jpg",
    type: "Dragon/Flying",
    description:
        "Dikenal sebagai 'Penjaga Lautan' yang sangat pemurah dan bijaksana, Dragonite sering kali membantu menuntun kapal yang karam di tengah badai menuju daratan dengan aman. Wataknya yang lembut membuatnya dicintai oleh para pelaut.\n\nMeskipun memiliki perawakan tubuh yang besar dan terkesan berat, Dragonite sanggup terbang membelah udara dengan kecepatan luar biasa. Ia mampu mengelilingi seluruh permukaan bumi hanya dalam waktu sekitar 16 jam.",
    basePower: 600,
    skills: ["Dragon Claw", "Outrage", "Hurricane", "Hyper Beam"],
    movies: [
      "https://img.youtube.com/vi/sO2g0vO4tNk/hqdefault.jpg", // Hoopa and the Clash of Ages
      "https://img.youtube.com/vi/S_uE8kX0CkY/hqdefault.jpg", // Detective Pikachu (Special Preview)
      "https://img.youtube.com/vi/TTJcPaFk9yI/hqdefault.jpg", // Mewtwo Strikes Back (Messenger Scene)
    ],
    height: "2.2 m",
    weight: "210.0 kg",
    category: "Dragon Pokémon",
    ability: "Inner Focus",
    weaknesses: ["Ice", "Fairy", "Dragon", "Rock"],
    stats: {
      "HP": 91,
      "Attack": 134,
      "Defense": 95,
      "Sp. Atk": 100,
      "Sp. Def": 100,
      "Speed": 80,
    },
    evolutions: ["Dratini", "Dragonair", "Dragonite"],
  ),

  // 4
  Pokemon(
    name: "Eevee",
    image: "assets/eevee.jpg",
    type: "Normal",
    description:
        "Memiliki struktur genetik yang sangat tidak stabil dan unik di dunia Pokémon. Karakteristik khusus ini membuatnya sangat peka terhadap perubahan lingkungan serta elemen-elemen eksternal di sekitarnya.\n\nKarena keunikan DNA tersebut, Eevee dapat berevolusi menjadi berbagai wujud elemen yang berbeda-beda—seperti api, air, listrik, hingga bayangan—tergantung pada batu evolusi atau tingkat ikatan emosional dengan pelatihnya.",
    basePower: 325,
    skills: ["Quick Attack", "Bite", "Swift", "Take Down"],
    movies: [
      "https://img.youtube.com/vi/84U03g1J7E0/hqdefault.jpg", // The Power of Us
      "https://img.youtube.com/vi/fXaeB7dO7iY/hqdefault.jpg", // Eevee & Friends Short
      "https://img.youtube.com/vi/CxibZuMcC5M/hqdefault.jpg", // Giratina and the Sky Warrior
    ],
    height: "0.3 m",
    weight: "6.5 kg",
    category: "Evolution Pokémon",
    ability: "Run Away",
    weaknesses: ["Fighting"],
    stats: {
      "HP": 55,
      "Attack": 55,
      "Defense": 50,
      "Sp. Atk": 45,
      "Sp. Def": 65,
      "Speed": 55,
    },
    evolutions: [
      "Eevee",
      "Vaporeon",
      "Jolteon",
      "Flareon",
      "Espeon",
      "Umbreon",
      "Leafeon",
      "Glaceon",
      "Sylveon",
    ],
  ),

  // 5
  Pokemon(
    name: "Gengar",
    image: "assets/gengar.jpg",
    type: "Ghost/Poison",
    description:
        "Gemar bersembunyi rapat di dalam bayangan targetnya dan menunggu momen yang tepat untuk melancarkan kejutan. Tanda paling jelas saat Gengar berada dekat denganmu adalah penurunan suhu udara sekitar secara drastis.\n\nKonon, ketika Gengar bersembunyi di dalam bayangan seseorang, ia menyerap panas tubuh korban hingga orang tersebut merasa menggigil kedinginan. Meringai lebar adalah ciri khasnya saat berhasil menakut-nakuti mangsanya.",
    basePower: 500,
    skills: ["Shadow Ball", "Sludge Bomb", "Hypnosis", "Dream Eater"],
    movies: [
      "https://img.youtube.com/vi/1roy4o4tqQM/hqdefault.jpg", // Detective Pikachu (Arena Battle)
      "https://img.youtube.com/vi/aWjL2i2uR0U/hqdefault.jpg", // Volcanion & the Mechanical Marvel
      "https://img.youtube.com/vi/0Qt70H4oMXI/hqdefault.jpg", // Destiny Deoxys (Alternative Cut)
    ],
    height: "1.5 m",
    weight: "40.5 kg",
    category: "Shadow Pokémon",
    ability: "Cursed Body",
    weaknesses: ["Ground", "Ghost", "Psychic", "Dark"],
    stats: {
      "HP": 60,
      "Attack": 65,
      "Defense": 60,
      "Sp. Atk": 130,
      "Sp. Def": 75,
      "Speed": 110,
    },
    evolutions: ["Gastly", "Haunter", "Gengar"],
  ),

  // 6
  Pokemon(
    name: "Jigglypuff",
    image: "assets/jigglypuff.jpg",
    type: "Normal/Fairy",
    description:
        "Mampu membengkakkan tubuhnya yang bulat elastis untuk memuat pasokan udara yang sangat banyak di dalam paru-parunya. Hal ini dilakukannya agar ia bisa menyanyikan melodi merdu dalam durasi yang sangat panjang.\n\nGelombang suara yang dipancarkan saat ia bernyanyi memiliki frekuensi khusus yang sanggup membuat siapa saja yang mendengarnya tertidur seketika. Jika pendengarnya tertidur sebelum lagunya selesai, Jigglypuff kerap merasa kesal dan mengembungkan pipinya.",
    basePower: 270,
    skills: ["Sing", "Pound", "Disarming Voice", "Rest"],
    movies: [
      "https://img.youtube.com/vi/1k0pUo5Zp-s/hqdefault.jpg", // Pikachu's Vacation
      "https://img.youtube.com/vi/WrJDKyFpmGg/hqdefault.jpg", // Spell of the Unown: Entei
      "https://img.youtube.com/vi/-cW2nfnLHkk/hqdefault.jpg", // Pokémon 3: The Movie
    ],
    height: "0.5 m",
    weight: "5.5 kg",
    category: "Balloon Pokémon",
    ability: "Cute Charm",
    weaknesses: ["Poison", "Steel"],
    stats: {
      "HP": 115,
      "Attack": 45,
      "Defense": 20,
      "Sp. Atk": 45,
      "Sp. Def": 25,
      "Speed": 20,
    },
    evolutions: ["Igglybuff", "Jigglypuff", "Wigglytuff"],
  ),

  // 7
  Pokemon(
    name: "Lucario",
    image: "assets/lucario.jpg",
    type: "Fighting/Steel",
    description:
        "Memiliki kemampuan istimewa untuk mendeteksi dan mengendalikan gelombang energi yang dikenal sebagai 'Aura'. Melalui aliran aura ini, Lucario bisa mengetahui kondisi emosi serta niat dari makhluk hidup di sekitarnya.\n\nKemampuan sensorik yang luar biasa ini memungkinkannya untuk memetakan lingkungan sekitar serta melacak keberadaan musuh yang tersembunyi dari jarak lebih dari satu kilometer, bahkan tanpa perlu melihatnya secara langsung.",
    basePower: 525,
    skills: ["Aura Sphere", "Close Combat", "Bone Rush", "Force Palm"],
    movies: [
      "https://img.youtube.com/vi/7vc-FhG682E/hqdefault.jpg", // Lucario and the Mystery of Mew (Trailer Utama)
      "https://img.youtube.com/vi/5E4N5KDwUeg/hqdefault.jpg", // Lucario and the Mystery of Mew (Teaser)
      "https://img.youtube.com/vi/32k8JTOftMA/hqdefault.jpg", // Destiny Deoxys (Official Promo)
    ],
    height: "1.2 m",
    weight: "54.0 kg",
    category: "Aura Pokémon",
    ability: "Steadfast",
    weaknesses: ["Fire", "Fighting", "Ground"],
    stats: {
      "HP": 70,
      "Attack": 110,
      "Defense": 70,
      "Sp. Atk": 115,
      "Sp. Def": 70,
      "Speed": 90,
    },
    evolutions: ["Riolu", "Lucario"],
  ),

  // 8
  Pokemon(
    name: "Pikachu",
    image: "assets/pikachu.jpg",
    type: "Electric",
    description:
        "Menyimpan energi listrik secara terus-menerus di dalam dua kantung pipinya yang berwarna merah cerah. Saat merasa terancam atau ingin berkomunikasi, ia memancarkan aliran listrik berkekuatan tinggi dari pipi tersebut.\n\nKetika sekelompok Pikachu berkumpul di satu area, akumulasi muatan listrik yang dikeluarkan secara bersamaan bahkan mampu memicu timbulnya badai petir lokal serta mengganggu fungsi peralatan elektronik di sekitarnya.",
    basePower: 320,
    skills: ["Thunderbolt", "Quick Attack", "Iron Tail", "Electro Ball"],
    movies: [
      "https://img.youtube.com/vi/WWug-d-NSQA/hqdefault.jpg", // Giratina and the Sky Warrior
      "https://img.youtube.com/vi/kYQ20v-FqL8/hqdefault.jpg", // Pokémon the Movie 2000: The Power of One
      "https://img.youtube.com/vi/j5p9sW_lR_E/hqdefault.jpg", // Pokémon: Mewtwo Returns
    ],
    height: "0.4 m",
    weight: "6.0 kg",
    category: "Mouse Pokémon",
    ability: "Static",
    weaknesses: ["Ground"],
    stats: {
      "HP": 35,
      "Attack": 55,
      "Defense": 40,
      "Sp. Atk": 50,
      "Sp. Def": 50,
      "Speed": 90,
    },
    evolutions: ["Pichu", "Pikachu", "Raichu"],
  ),

  // 9
  Pokemon(
    name: "Snorlax",
    image: "assets/snorlax.jpg",
    type: "Normal",
    description:
        "Menghabiskan sebagian besar waktunya sehari-hari hanya untuk makan dan tidur. Pokémon ini tidak akan merasa puas sebelum menyantap setidaknya 400 kg makanan setiap harinya hingga perutnya membesar.\n\nCairan asam di dalam lambungnya sangat pekat dan mematikan, memungkinkannya mencerna makanan basi, berjamur, hingga bahan beracun tanpa mengalami gangguan pencernaan sedikit pun.",
    basePower: 540,
    skills: ["Body Slam", "Rest", "Snore", "Heavy Slam"],
    movies: [
      "https://img.youtube.com/vi/yR6iG4v39K4/hqdefault.jpg", // Pokémon Generations Episode
      "https://img.youtube.com/vi/b_Kq0g4wM2E/hqdefault.jpg", // Pokémon Journeys Special
      "https://img.youtube.com/vi/9xG9-V_0_Z4/hqdefault.jpg", // Arceus and the Jewel of Life
    ],
    height: "2.1 m",
    weight: "460.0 kg",
    category: "Sleeping Pokémon",
    ability: "Immunity",
    weaknesses: ["Fighting"],
    stats: {
      "HP": 160,
      "Attack": 110,
      "Defense": 65,
      "Sp. Atk": 65,
      "Sp. Def": 110,
      "Speed": 30,
    },
    evolutions: ["Munchlax", "Snorlax"],
  ),

  // 10
  Pokemon(
    name: "Squirtle",
    image: "assets/squirtle.jpg",
    type: "Water",
    description:
        "Tempurung keras di punggungnya tidak hanya bertindak sebagai pelindung fisik yang tangguh saat menarik diri dari bahaya, tetapi juga membantu mengurangi hambatan air saat ia berenang.\n\nBentuk tempurungnya yang aerodinamis memungkinkannya meluncur bebas di dalam air dengan kecepatan tinggi. Saat bertarung, Squirtle sanggup menyemprotkan jet air bertekanan tinggi secara akurat langsung dari mulutnya.",
    basePower: 314,
    skills: ["Water Gun", "Bubble", "Aqua Tail", "Hydro Pump"],
    movies: [
      "https://img.youtube.com/vi/W4Zt7w9_Dk0/hqdefault.jpg", // Squirtle Squad Classic Special
      "https://img.youtube.com/vi/2d7aJk-W5yY/hqdefault.jpg", // Pokémon: The Rise of Darkrai
      "https://img.youtube.com/vi/xH2T9y-M0Lk/hqdefault.jpg", // Pokémon: Zoroark Master of Illusions
    ],
    height: "0.5 m",
    weight: "9.0 kg",
    category: "Tiny Turtle Pokémon",
    ability: "Torrent",
    weaknesses: ["Electric", "Grass"],
    stats: {
      "HP": 44,
      "Attack": 48,
      "Defense": 65,
      "Sp. Atk": 50,
      "Sp. Def": 64,
      "Speed": 43,
    },
    evolutions: ["Squirtle", "Wartortle", "Blastoise"],
  ),
];
