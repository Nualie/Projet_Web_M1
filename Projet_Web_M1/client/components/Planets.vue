<template>
  <div>
    <h1 class="espace"></h1>
      <article v-for="article in articles" :key="article.id">
        <div class="article-img">
          <div :style="{ backgroundImage: 'url(' + article.image + ')' }">
          </div>
        </div>
        <div class="article-content" v-if="editingArticle.id !== article.id">
          <div class="article-title">
            <h2>{{ article.name }} - {{ article.price }}€</h2>
            <div class="area-button">
              <button @click="deleteArticle(article.id)" class="buttonstyle">Supprimer</button>
              <button @click="editArticle(article)" class="buttonstyle">Modifier</button>
            </div>
          </div>
          <p>{{ article.description }}</p>
        </div>
        <div class="article-content" v-else>
          <div class="article-title">
            <h2><input type="text" v-model="editingArticle.name"> - <input type="number" v-model="editingArticle.price"></h2>
            <div class="area-button">
              <button @click="sendEditArticle()" class="buttonstyle">Valider</button>
              <button @click="abortEditArticle()" class="buttonstyle">Annuler</button>
            </div>
          </div>
          <p><textarea v-model="editingArticle.description"></textarea></p>
          <input type="text" v-model="editingArticle.image" placeholder="Lien vers l'image">
        </div>
      </article>
    <form @submit.prevent="addArticle" class="pad">
      <h2>Nouveau produit à ajouter</h2>
      <input type="text" v-model="newArticle.name" placeholder="Nom du produit" required>
      <input type="number" v-model="newArticle.price" placeholder="Prix" required>
      <div class="textmargin">
        <textarea type="text" v-model="newArticle.description" required></textarea>
      </div>
      <input type="text" v-model="newArticle.image" placeholder="Lien vers l'image">
      <button type="submit">Ajouter</button>
    </form>
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
    panier: { type: Object }
  },
  data () {
    return {
      newArticle: {
        name: '',
        description: '',
        image: '',
        price: 0
      },
      editingArticle: {
        id: -1,
        name: '',
        description: '',
        image: '',
        price: 0
      }
    }
  },
  methods: {
    addArticle () {
      this.$emit('add-article', this.newArticle)
    },
    deleteArticle (articleId) {
      this.$emit('delete-article', articleId)
    },
    editArticle (article) {
      this.editingArticle.id = article.id
      this.editingArticle.name = article.name
      this.editingArticle.description = article.description
      this.editingArticle.image = article.image
      this.editingArticle.price = article.price
    },
    sendEditArticle () {
      this.$emit('update-article', this.editingArticle)
      this.abortEditArticle()
    },
    abortEditArticle () {
      this.editingArticle = {
        id: -1,
        name: '',
        description: '',
        image: '',
        price: 0
      }
    }
  }
}
</script>

<style scoped>
article {
  display: flex;
}

.article-img {
  flex: 1;
}

.textmargin {
  margin: 10px 0px;
}

.buttonstyle {
  border:0;
  background: #FF6200;
  display: block;
  width: 150px;
  height: 32px;
  margin: 10px auto;
  text-align: center;
  border: 1px solid black;
  outline: none;
  color: white;
  border-radius: 12px;
  transition: 0.25s;
  cursor: pointer;
}

.buttonstyle:hover {
  background: white;
  color: black;
}

.article-img div {
  width: 100px;
  height: 100px;
  position: relative;
  left: 15%;
  background-size: cover;
}

.article-content {
  flex: 3;
}

.article-title {
  display: flex;
  justify-content: space-between;
}

textarea {
  width: 100%;
}

.pad {
  padding:5px 50px;
}

.espace{
  width: .1%;
  height: 4.25rem;
  background-color: transparent;
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
  position: relative;
  margin: .625rem 1.562rem;
  height: 25rem;
  width: 25rem;
}

.contentstyle {
  border-left:none;
  border-top:none;
  border-right:none;
  border-bottom:thick solid #FF6200;
  margin: 0px 0px 25px 0px;
}

.area-button {
  padding: 0px 65px;
}

</style>
