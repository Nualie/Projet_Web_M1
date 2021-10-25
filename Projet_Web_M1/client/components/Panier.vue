<template>
  <div>
    <h1 class="espace"></h1>
    <section class="form">
    <h2>My Cart</h2>
    <div class="logo">
      <img src="https://imgur.com/ux98Dsg.gif" alt="A black hole for your money" height="70" width="70">
    </div>
    <ul>
      <li v-for="article of panier.articles" :key="article.id">
        {{ find(article.id).name}} - {{ find(article.id).description }}
      </li>
    </ul>
    <button @click="pay" v-if="isConnected">Pay</button>
    <router-link to="/login" v-else>Log in to pay</router-link>
    </section>
    <footer class="foot">
      <p>SPACE CAPITALISM</p>
      <p>NFTs, but less expensive to make, and we'll pretend they're real planets!</p>
      <p>BOUSSION AMAURY & JULIE PONTHOU</p>
      <p><time pubdate datetime="2012-03-01"></time></p>
    </footer>
  </div>
</template>

<script>
module.exports = {
  props: {
    articles: { type: Array, default: [] },
    panier: { type: Object },
    isConnected: { type: Boolean }
  },
  data () {
    return {
    }
  },
  async mounted () {
  },
  methods: {
    find (articleId) {
      return this.articles.find(article => article.id === articleId)
    },
    pay () {
      this.$emit('pay')
    }
  }
}
</script>

<style scoped>
  .form{
    position: relative;
    left: 2%;
    margin: 60px;
  }
  .espace{
    width: .1%;
    height: 3.25rem;
    background-color: transparent;

  }

  .logo {
    position: absolute;
    top: -1.562rem;
    left: 12.5rem;
    margin: 0px;
  }

  .foot{
    width: 100%;
    text-align: center;
    background: #FF6200;
    position: relative;
    bottom:0;
    left: 0;
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
