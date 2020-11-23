// header scrolling effect
/*$(window).on("scroll", function () {
  if ($(window).scrollTop()) {
    $("header").addClass("nav-show");
  } else {
    $("header").removeClass("nav-show");
  }
});*/

let scroll_position = 0;
let scrollingUp;

let header = document.getElementById("header");

window.addEventListener("scroll", (e) => {
  scrollingUp =
    document.body.getBoundingClientRect().top > scroll_position ? false : true;
  scroll_position = document.body.getBoundingClientRect().top;
  if (scrollingUp) {
    header.classList.add("nav-show");
  } else {
    if (header.classList) {
      header.classList.remove("nav-show");
    }
  }
});

//hamburger
const navSlide = () => {
  const hamburger = document.querySelector(".hamburger");
  const navbar = document.querySelector(".nav-bar");
  const navLinks = document.querySelectorAll(".nav-bar li");

  hamburger.onclick = () => {
    navbar.classList.toggle("nav-active");

    //Animation links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = "";
      } else {
        link.style.animation = `navLinkFade 0.5s ease forwards ${
          index / 7 + 1
        }s`;
      }
    });
    //hamburger animation
    hamburger.classList.toggle("toggle");
  };
};

window.onload = () => navSlide();
