<template>
  <form @submit.prevent="loginUser()">
    <h1 class="espace"></h1>
    <div class="box">
      <h1>Connexion</h1>
      <input v-model="email" type="email" name="" placeholder="EMAIL">
      <input v-model="password" type="password" name="" placeholder="PASSWORD">
      <input type="submit" name="" value="Log in">
      <p>No account yet?</p><router-link to = "/Register">Sign up</router-link>
    </div>
  </form>
</template>

<script>
module.exports = {
  props: {
    articles: { type: Array, default: [] },
    panier: { type: Object }
  },
  data () {
    return {
      email: '',
      password: ''
    }
  },
  async mounted () {
  },
  methods: {
    async loginUser() {
      this.$emit('login', {
        email: this.email,
        password: this.password
      })
    }
  }
}
</script>

<style scoped>

.box{
  width: 18.75rem;
  padding: 2.5rem;
  position: absolute;
  top: 45%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: transparent;
  text-align: center;
}
.box h1{
  color: black;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "email"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  border: 2px solid black;
  padding: 14px 10px;
  width: 12.5rem;
  outline: none;
  color: black;
  border-radius: 24px;
  transition: 0.25s;
}
.box input[type = "email"]:focus,.box input[type = "password"]:focus{
  width: 17.5rem;
  border-color:  black;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid black;
  padding: 14px 40px;
  outline: none;
  color: black;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: black;
  color: white;
}
.form{

}
.espace{
  width: .1%;
  height: 4.25rem;
  background-color: transparent;
}
</style>
