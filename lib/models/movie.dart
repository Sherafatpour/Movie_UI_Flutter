// Our movie model
class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.cast,
  });
}

List<Movie> movies_en = [
  Movie(
    id: 1,
    title: "Tale of the Sea",
    year: 2018,
    poster: "assets/posters/a.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    numOfRatings: 178,
    rating: 4.6,
    criticsReview: 2,
    metascoreRating: 7,
    genra: ["Romance", "Drama"],
    plot: "Taher Mohebi is a well-known writer who, after witnessing a violent murder, breaks down and spends three years in a mental institution. After release he is told that things are just as they were before, but his relentless hallucinations make him want to return to the institution." ,
    cast: [
      {
        "orginalName": "Bahman Farmanara",
        "movieName": "Taher",
        "image": "assets/actors/bahmanfarmanara.jpg",
      },
      {
        "orginalName": "Fatemah Motamed-Aria",
        "movieName": "Jaleh",
        "image": "assets/actors/fatemehmoetamed.jpg",
      },
      {
        "orginalName": "Leila Hatami",
        "movieName": "Parvaneh",
        "image": "assets/actors/leilahatami.jpg",
      },
      {
        "orginalName": "Ali Nassirian",
        "movieName": "Hooshang",
        "image": "assets/actors/alinasirian.jpg",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Exodus",
    year: 2020,
    poster: "assets/posters/b.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 395,
    rating: 5.0,
    criticsReview: 5,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: "The story of a group of farmers who their lands and crops have been destroyed by a mistake of a governmental company. Now after not finding any response from the government they decide to go with their tractors from their village to Tehran to meet the president himself and hand him their complain.",
    cast: [
      {
        "orginalName": "Faramarz Gharibian",
        "movieName": "Rahmat",
        "image": "assets/actors/faramarzgharibian.jpg",
      },
      {
        "orginalName": "Kambiz Dirbaz",
        "movieName": "Security Agent",
        "image": "assets/actors/kambizdirbaz.jpg",
      },
      {
        "orginalName": "Mohamad Reza Sharifinia",
        "movieName": "Atashkar",
        "image": "assets/actors/mohamadrezasharifinia.jpg",
      },
      {
        "orginalName": "Pantea Panahiha",
        "movieName": "Mehr Banoo",
        "image": "assets/actors/PanteaPanahiha.jpg",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Alive",
    year: 2018,
    poster: "assets/posters/d.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 459,
    rating: 6.2,
    criticsReview: 50,
    metascoreRating: 79,
    genra: [ "Drama"],
    plot: "Asma's previous suitor Yaser ruins her wedding Ceremony. Her brother Jamal accidentally kills Yaser's brother. Yaser's odd suggestion in order to forgive Jamal, endangers Asma's Marriage.",
    cast: [
      {
        "orginalName": "Fatemah Motamed-Aria",
        "movieName": "Sorayya",
        "image": "assets/actors/fatemehmoetamed.jpg",
      },
      {
        "orginalName": "Hamed Behdad",
        "movieName": "Naeem",
        "image": "assets/actors/hamedbehdad.jpg",
      },
      {
        "orginalName": "Javad Ezati",
        "movieName": "Yaser",
        "image": "assets/actors/javadezzati.jpg",
      },
      {
        "orginalName": "Baran Kosari",
        "movieName": "Asma",
        "image": "assets/actors/barankosari.jpg",
      },
    ],
  ),
];


List<Movie> movies_fa = [
  Movie(
    id: 1,
    title: "حکایت دریا",
    year: 1397,
    poster: "assets/posters/a.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    numOfRatings: 178,
    rating: 4.6,
    criticsReview: 2,
    metascoreRating: 7,
    genra: ["عاشقانه", "درام"],
    plot: "طاهر محبی یک نویسنده شناخته شده است که، پس از مشاهده قتل های خشونت آمیز، تجزیه می کند و صرف سه سال در یک موسسه روانی است. پس از آزادی به او گفته می شود كه همه چیز مانند گذشته است ، اما توهمات بی امان او را وادار به بازگشت به  موسسه می كند. ",
    cast: [
      {
        "orginalName": "بهمن فرمان آرا",
        "movieName": "طاهر",
        "image": "assets/actors/bahmanfarmanara.jpg",
      },
      {
        "orginalName": "فاطمه معتمد آریا",
        "movieName": "ژاله",
        "image": "assets/actors/fatemehmoetamed.jpg",
      },
      {
        "orginalName": "لیلا حاتمی",
        "movieName": "پروانه",
        "image": "assets/actors/leilahatami.jpg",
      },
      {
        "orginalName": "علی نصیریان",
        "movieName": "هوشنگ",
        "image": "assets/actors/alinasirian.jpg",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "خروج",
    year: 1398,
    poster: "assets/posters/b.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 395,
    rating: 5.0,
    criticsReview: 5,
    metascoreRating: 76,
    genra: ["اکشن", "زندگینامه", "درام"],
    plot: "داستان گروهی از کشاورزان که زمین ها و محصولاتشان را به اشتباه یک شرکت دولتی نابود کرده است. اکنون پس از عدم یافتن پاسخ دولت ، آنها تصمیم گرفتند با تراکتورهای خود از روستای خود به تهران بروند و با رئیس جمهور ملاقات کنند و شکایت خود را به وی تحویل دهند.",
    cast: [
      {
        "orginalName": "فرامرز غریبیان",
        "movieName": "رحمت",
        "image": "assets/actors/faramarzgharibian.jpg",
      },
      {
        "orginalName": "کامبیز دیرباز",
        "movieName": "مامور حفاظت",
        "image": "assets/actors/kambizdirbaz.jpg",
      },
      {
        "orginalName": "محمدرضا شریفی نیا",
        "movieName": "آتشکار",
        "image": "assets/actors/mohamadrezasharifinia.jpg",
      },
      {
        "orginalName": "پانتئا پناهیان",
        "movieName": "مهر بانو",
        "image": "assets/actors/PanteaPanahiha.jpg",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "جاندار",
    year: 2018,
    poster: "assets/posters/d.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 459,
    rating: 6.2,
    criticsReview: 50,
    metascoreRating: 79,
    genra: [ "درام"],
    plot: "خواستگار قبلی اسما یاسر مراسم عروسی او را خراب می کند. برادرش جمال به طور تصادفی برادر یاسر را می کشد. پیشنهاد عجیب یاسر برای بخشش جمال ، ازدواج اسما را به خطر می اندازد." ,
    cast: [
      {
        "orginalName": "فاطمه معتمد آریا",
        "movieName": "ثریا",
        "image": "assets/actors/fatemehmoetamed.jpg",
      },
      {
        "orginalName": "حامد بهداد",
        "movieName": "نعیم",
        "image": "assets/actors/hamedbehdad.jpg",
      },
      {
        "orginalName": "جواد عزتی",
        "movieName": "یاسر",
        "image": "assets/actors/javadezzati.jpg",
      },
      {
        "orginalName": "باران کوثری",
        "movieName": "اسما",
        "image": "assets/actors/barankosari.jpg",
      },
    ],
  ),
];
