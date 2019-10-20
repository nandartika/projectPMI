<div class="slideshow-container">

    <div class="mySlides">
        <div class="numbertext">1 / 3</div>
        <img src="images/image_1.png" style="width:100%">
        <div class="text">Caption Text</div>
    </div>

    <div class="mySlides">
        <div class="numbertext">2 / 3</div>
        <img src="images/image_2.jpg" style="width:100%">
        <div class="text">Caption Two</div>
    </div>

    <div class="mySlides">
        <div class="numbertext">3 / 3</div>
        <img src="images/image_3.jpg" style="width:100%">
        <div class="text">Caption Three</div>
    </div>

    <a class="prev" onclick="plusSlides(-1)">&#10094</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>

<div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span> 
    <span class="dot" onclick="currentSlide(2)"></span> 
    <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" aktif", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " aktif";
    }
</script>