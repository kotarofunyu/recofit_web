import Vue from 'vue/dist/vue.esm.js'
import axios from 'axios'
import Index from './components/index.vue'
document.addEventListener("DOMContentLoaded", function() {
    var app = new Vue({
        el: '#chart',
        components: {
          'navbar': Index,
        },
        data: {
            records: []
        },
        mounted :function() {
            axios.get('http://localhost:3000/api/training_record')
            .then(
                response => this.records = response.data.training_record.record
                )
            .catch(response => console.log(response))
        }
    });
});
