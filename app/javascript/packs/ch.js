import Vue from 'vue/dist/vue.esm.js'
import Index from './components/index.vue'
document.addEventListener("DOMContentLoaded", function() {
    var app = new Vue({
        el: '#js_test',
        components: {
          'navbar': Index,
        }
      });
});
