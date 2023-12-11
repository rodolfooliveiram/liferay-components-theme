// Slick Carousels Scripts
$(document).ready(function () {
  // Carousel Template (Web Content)
  $('.carousel-template').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    prevArrow:
      "<button class='prevArrow'><div class='line-wrapper'><div class='line1'></div><div class='line2'></div></div></button>",
    nextArrow:
      "<button class='nextArrow'><div class='line-wrapper'><div class='line1'></div><div class='line2'></div></div></button>",
    responsive: [
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          arrows: false,
          dots: true,
        },
      },
      {
        breakpoint: 576,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
          arrows: false,
          dots: true,
        },
      },
      {
        breakpoint: 440,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          centerMode: true,
          dots: true,
        },
      },
    ],
  });

  // GX2 Asset Publisher Template
  $('.case-carousel').slick({
    prevArrow:
      "<button class='prevArrow'><div class='line-wrapper'><div class='line1'></div><div class='line2'></div></div></button>",
    nextArrow:
      "<button class='nextArrow'><div class='line-wrapper'><div class='line1'></div><div class='line2'></div></div></button>",
    dots: true,
    autoplay: true,
    autoplaySpeed: 5000,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
        },
      },
    ],
  });
});
