<template>
  <div>
    <h2>Register</h2>
    <form @submit.prevent="createUser()">
      <h1 class="espace"></h1>
      <div class="box">
        <h1>Inscription</h1>
        <input v-model="email" placeholder="email">
        <input
        type="password" v-model="password"
        placeholder="password"
        >
        <button type="submit">Create an account</button>
      </div>
    </form>
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
      email: '',
      password: ''
    }
  },
  async mounted () {
  },
  methods: {
    async createUser() {
      await axios.post('/api/register', {
        email: this.email,
        password: this.password
      })
      this.$router.push('/')
    }
  }
}
</script>

<style scoped>
.form{
position: absolute;
left: 1.5%;
}
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
.box input[placeholder = "email"],.box input[type = "password"]{
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
.box input[placeholder = "email"]:focus,.box input[type = "password"]:focus{
  width: 17.5rem;
  border-color:  black;
}
.box button[type = "submit"]{
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
.box button[type = "submit"]:hover{
  background: black;
    color: white;
}
.espace{
    width: .1%;
    height: 1.25rem;
    background-color: transparent;
}
</style>
