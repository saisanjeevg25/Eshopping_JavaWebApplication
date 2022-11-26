<style>
#about-us{display:block; width:100%; line-height:1.6em;}
#about-us h2{color:#006400; margin-bottom:50px; padding-bottom:40px; font-size:40px; text-align:center; text-transform:uppercase; border-bottom:1px solid #CCCCCC;} 
#about-us #about-intro{margin-bottom:50px;}
#about-us #about-intro p{margin:20px 0 0 0; padding:0;}
#about-us #about-intro p:first-child{margin-top:0;}
#about-us #team{display: block; }
#about-us #team ul{margin:0; padding:0; list-style:none;}
#about-us #team ul li{margin-bottom:30px;}
#about-us #team ul li figure{position:relative; text-align:center;}
#about-us #team ul li figure img{padding:9px; border:1px solid #CCCCCC;}
#about-us #team ul li figure figcaption{display:none; position:absolute; top:10px; left:60px; width:280px; height:200px; overflow:hidden; color:#FFFFFF; background-color:#000000; background:hsla(0, 0%, 0%, 0.8);}
#about-us #team ul li:hover figure figcaption{display:block; width:280px;}
#about-us #team ul li figure figcaption p{margin:15px 15px 0 15px; padding:0;}
#about-us #team ul li figure figcaption p:first-child{margin-top:35px;}
#about-us #team ul li figure figcaption .team_name{font-weight:bold;}
#about-us #team ul li figure figcaption .team_title{margin:0; font-size:11px; line-height:normal;}
#about-us #team ul li figure figcaption .team_description{text-align:left;}
.one_half, 
.one_third, .two_third, 
.one_quarter, .two_quarter, .three_quarter, 
.one_fifth, .two_fifth, .three_fifth, .four_fifth{display:inline-block; float:left; margin:0 0 0 20px; list-style:none; }
.one_third, .two_third{margin:0 0 0 30px;}
.first, 
.one_half:first-child, 
.one_third:first-child, .two_third:first-child, 
.one_quarter:first-child, .two_quarter:first-child, .three_quarter:first-child, 
.one_fifth:first-child, .two_fifth:first-child, .three_fifth:first-child, .four_fifth:first-child{margin-left:0; }
.two_half, .three_third, .four_quarter, .five_fifth{display:block; width:100%; clear:both;}
.one_half{width:470px;}
.one_third{width:400px;}
.two_third{width:630px;}
.one_quarter{width:225px;}
.two_quarter{width:470px;}
.three_quarter{width:715px;}
.one_fifth{width:176px;}
.two_fifth{width:372px;}
.three_fifth{width:568px;}
.four_fifth{width:764px;}
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #F5FFFA;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #F5FFFA;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 6.0s;
  animation-name: fade;
  animation-duration: 6.0s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<div class="wrapper row2">
  <div id="container" class="clear">
    <div id="about-us" class="clear">
      <section id="about-intro" class="clear">
        <h2>About Us</h2>
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="${images}/oie_A6GIfPlRkY8t.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="${images}/oie_hLdQCImSiRHe.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="${images}/BeFunky-design.jpg" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 6000);
}
</script>
        <p><b>SSV's Bikes and Cars</b> is India's leading car and bike search venture that helps users buy cars that are right for them. Its website carry rich automotive content such as expert reviews, detailed specs and prices, comparisons as well as videos and pictures of all car/bike brands and models available in India. The company has tie ups with many auto manufacturers, more than 4000 car and bike dealers and numerous financial institutions to facilitate the purchase of vehicles.</p>
        <p><b>SSV's Bikes and Cars</b> has launched many innovative features to ensure that users get an immersive experience of the car/bike model. These include a Feel The tools that gives 360-degree interior/exterior views with sounds of the automobile and explanations of features with videos; search and comparison by make, model, price, features; and live offers and promotions in all cities.</p>
      </section>
      <section id="team">
        <h2>OUR PARTNERS</h2>
        <ul class="clear">
          <li class="one_third first">
            <figure><img src="${images}/rsz_hdfc.jpg" alt="">
              <figcaption>
                <p class="team_name">HDFC BANK</p>
                <p class="team_title">Financing Partner</p>
                <p class="team_description">Our financing Partner provide all latest and easy updated payment modes.</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_third">
            <figure><img src="${images}/rsz_is.jpg" alt="">
              <figcaption>
                <p class="team_name">INVESTORS AND SHAREHOLDERS</p>
                <p class="team_description" style = "font-size: 10px;">SSV's Bikes and Cars, which went live in 2008, was set up by a bunch of young, enthusiastic IIT graduates. Its investors include Google Capital, Tybourne Capital, Hillhouse Capital, Sequoia Capital, HDFC Bank, Ratan Tata and Times Internet.</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_third">
            <figure><img src="${images}/rsz_bds.jpg" alt="">
              <figcaption>
                <p class="team_name">OUR DEALERS</p>
                <p class="team_description">The company has tie ups with many auto manufacturers, more than 4000 car and bike dealers.</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_third first">
            <figure><img src="${images}/rsz_glb.jpg" alt="">
              <figcaption>
                <p class="team_name">COMPANY EXPANSION</p>
                <p class="team_description">The company has expanded to Southeast Asia with the launch of SSVwheels.ph, SSVwheels.my and SSVoto.com. It also has a presence in the UAE with SSVwheels.ae</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_third">
            <figure><img src="${images}/rsz_baj.jpg" alt="">
              <figcaption>
                <p class="team_name">Bajaj Allianz</p>
                <p class="team_title">Insurance Partner</p>
                <p class="team_description">To diversify our product offerings we have ventured into car insurance business through SSV's Insurance with our Partner Bajaj Allianz General Insurance Co. Ltd. </p>
              </figcaption>
            </figure>
          </li>
          <li class="one_third">
            <figure><img src="${images}/rsz_del.jpg" alt="">
              <figcaption>
                <p class="team_name">SSV's KART</p>
                <p class="team_title">Delivery Executive</p>
                <p class="team_description">Our Delivery Agents make sure to deliver your Automobile on time, safe and securely. They also do Open delivery and Installations(if required) according to your convenience. </p>
              </figcaption>
            </figure>
          </li>
        </ul>
      </section>
    </div>
  </div>
</div>