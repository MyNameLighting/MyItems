<template>
<div id="app">
  <router-view></router-view>
</div>
</template>

<script>
export default {
  name: 'app',
  components: {

  },
  data() {
    return {

    }
  },
  mounted() {
    //本地加载请求静态json文件的形式
    // this.axios.get('/mock/user/login.json').then((res)=>{
    //   this.res = res;
    // })
    //通过esay-mock平台实现数据mock  
    // this.axios.get('/mock/user/login.json').then((res)=>{
    //   this.res = res;
    // })
    if (this.$cookie.get('userId')) {
      this.getUser();
      this.getCartCount();
    }
  },
  methods: {
    getUser() {
      this.axios.get('/user').then((res = {}) => {
        //to-do 保存到vuex里面
        this.$store.dispatch('saveUserName', res.username);
      })
    },
    getCartCount() {
      this.axios.get('/carts/products/sum').then((res = 0) => {
        this.$store.dispatch('saveCartCount', res);
      })
    }
  }
}
</script>

<style lang="scss">
@import './assets/scss/reset.scss';
// @import './assets/scss/mixin.scss';
// @import './assets/scss/modal.scss';
@import './assets/scss/config.scss';
@import './assets/scss/button.scss';
</style>
