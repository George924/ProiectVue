<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> |

    <router-link to="/pistols">Pistols</router-link>
  </nav>
  <router-view/>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #073a05;
  background-image: url('https://www.shutterstock.com/shutterstock/photos/1456834667/display_1500/stock-vector-camouflage-seamless-pattern-trendy-style-camo-repeat-print-vector-illustration-khaki-texture-1456834667.jpg');
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #06531d;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
