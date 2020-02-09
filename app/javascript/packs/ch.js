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
        mounted: function() {
            axios.get('http://localhost:3000/api/training_record')
            .then(
                response => this.records = response.data.training_record.record
                // event = response.data.training_record.record.map(record=>record.event)
                // console.log(event)
                // event.forEach(function(value) {
                //     console.log(value)
                //     value.forEach(function(item) {
                //         console.log(item)
                //         item.set.forEach(function(set) {
                //             // this.records = set.weight
                //             console.log("重量データ"+set.weight)
                //         })
                //     })
                // })
            )
            .catch(response => console.log(response))
        }
    });
});
