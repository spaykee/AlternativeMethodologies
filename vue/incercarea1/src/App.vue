<template>
  <div id="app">
    <NavBar />
    <div class="content">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
import NavBar from './components/NavBar.vue'

export default {
  name: 'app',
  components: {
    NavBar
  }
}
</script>


<style lang="scss">
.content {
  padding-top: 15px;
}
</style>
