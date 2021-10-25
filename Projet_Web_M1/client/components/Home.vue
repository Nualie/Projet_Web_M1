<template>
  <div>
    <section>
      <h1 class="espace"></h1>
      <article>
        <h2>INSTANT DELIVERY</h2>
        <p>Buy your own planet!</p>
      </article>
      <nav>
      <center class="outer">
          <img src="https://i.imgur.com/fTZrXYx.gif" alt="A lava planet">
          <img src="https://imgur.com/ssE29Ft.gif" alt="A gas giant">
          <img src="https://imgur.com/ZVW14VB.gif" alt="An ice planet">
          <img src="https://imgur.com/BmP4V9l.gif" alt="A water planet full of islands">
         
      </center>
      </nav>
    </section>
    <div class="hp">
      <img src="https://get.pxhere.com/photo/person-light-people-sport-street-photography-crowd-motion-portrait-broken-life-dancer-relaxation-performance-dancing-funky-nightclub-hip-hop-studio-shot-bboy-breakdance-arts-culture-breakdancing-dissolving-cool-attitude-casual-clothing-photographic-effects-606489.jpg" alt="">
      <div class="text">
        <div class="blank"></div>
          <div class="h3">
            <p class="details">
              On this website, you can start YOUR own multisideral empire!
            </p>
          </div>
      </div>
    </div>
    <footer class="foot">
      <p>SPACE CAPITALISM</p>
      <p>NFTs, but less expensive to make, and we'll pretend they're real planets!</p>
      <p>BOUSSION AMAURY & JULIE PONTHOU</p>
      <p><time pubdate datetime="2012-03-01"></time></p>
    </footer>
  </div>
</template>

<script>
  
</script>

<style scoped>

  html {
    font-family: sans-serif;
  }

  body {
    margin: 0;
  }

  h1 {
    text-align: center;
    color: white;
    line-height: 100px;
    margin: 0;
  }

  article {
    min-height: 20px;
    width:100%;
    left: 0%;
    background: #FF6200;
    color : white;
    text-align: center;
  }

  .espace{
    width: .1%;
    height: 4rem;
    background-color: transparent;
  }

  nav {
    width: 100%;
    height: 31.25rem;
    border-top: 1px solid black;
    border-bottom: 1px solid black;
    margin: 100px auto;
    overflow: hidden;
  }

  .hp {
    position: relative;
    width: 100%;
    margin: 0 30px 30px 0;
    background-size: 100% 100%;
    float: center;
  }

  .hp:hover .details {
    display: block;
  }

  .details {
    color: black;
    display: none;
    font-size: 2vw;
  }

  .text {
    position: absolute;
    bottom: 0px;
    width: 100%;
    height: 100%;
    line-height: 0px;
    background-size: 100% 100%;
    background: rgba(0, 0, 0, 0.4);
  }

  .textStyle1 {
    font-size: 15vw;
  }
        
  .blank {
    float: center;
    width: 100%;
    background-color: transparent;
    height: 25%;
  }

  .h3 {
    float: center;
    width: 100%;
    text-align: center;
    color: #000000;
  }

  @keyframes rolling {
      from {
        transform: translateX(0%);
      }
      to {
        transform: translateX(-50%);
      }
    }

  .outer {
    display: flex;

  }

  .foot{
    width: 100%;
    background-color: #FF6200;
    text-align: center;
  }

  img {
    max-width: 75%;
    max-height: 75%;
    width: auto;
    height: auto;
    image-rendering: optimizeSpeed;             /* Stop image smoothing for speed  */
    image-rendering: -moz-crisp-edges;          /* Firefox                        */
    image-rendering: -o-crisp-edges;            /* Opera                          */
    image-rendering: -webkit-optimize-contrast; /* Chrome (and eventually Safari) */
    image-rendering: pixelated; /* Chrome */
    image-rendering: optimize-contrast;         /* CSS3 Proposed                  */
    -ms-interpolation-mode: nearest-neighbor;   /* IE8+                           */

  }

</style>