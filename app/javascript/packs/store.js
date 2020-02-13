import Vue from 'vue/dist/vue.esm.js';
// Ajax通信ライブラリ
import axios from 'axios';

// Json取得のベースURL
const URL_BASE = 'http://localhost:3000/api/training_record';

// Vue.js のインスタンス
module.exports = new Vue({
  data: {
    // Jsonデータ格納用
    search_list: []
  },
  methods: {
    // Ajax通信でJsonを取得し、特定のプロパティに格納する
    // 取得したら GET_AJAX_COMPLETE で通知する
    get_ajax(url, name) {
      return axios.get(URL_BASE + url)
      .then((res) => {
        // Vue.set(this, name, res.data);
        console.log(res);
        this.$emit('GET_AJAX_COMPLETE');
      });
    },
    // プロパティ名を指定してデータを取得
    get_data(name) {
      return this.$data[name];
    }
  }
});