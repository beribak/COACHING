const stickyNavbar = () => {
  window.addEventListener("scroll", function(){
    var header = document.getElementById("sticky-navbar");
    console.log(header);
    header.classList.toggle("sticky", window.scrollY > 0);
  })
};

export {stickyNavbar}
