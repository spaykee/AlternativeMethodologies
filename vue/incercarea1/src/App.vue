<template>
  <div id="app">
    <NavBar />
    <div class="content">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
import { mapActions } from 'vuex';

import NavBar from './components/NavBar.vue'

export default {
  name: 'app',
  components: {
    NavBar
  },
  methods: {
    ...mapActions(["setLoginUser"]),
  },
  mounted() {
    // if (localStorage.getItem("token") !== null) {
    //   this.setLoginUser(localStorage.getItem("token"));
    // }
  }
}
</script>


<style lang="scss">
.content {
  padding-top: 15px;
}
</style>
