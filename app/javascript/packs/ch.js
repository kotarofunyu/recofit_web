import Vue from 'vue/dist/vue.esm.js'
import axios from 'axios'
import Graph from './components/graph.vue'
document.addEventListener("DOMContentLoaded", function() {
    var app = new Vue({
        el: '#chart',
        data: {
            labels: [],
            data: []
        },
        methods: {
            displayGraph: function(){
                var ctx = document.getElementById('myChart').getContext('2d');
                var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: this.labels,
                    datasets: [{
                        label: '重量の遷移',
                        data: this.data
                    }]
                  }
                });
            }
        },
        mounted: function(){
            // var urlBeforeDecode = location.href
            // var urlDecoded = decodeURI(urlBeforeDecode)
            // var item = urlDecoded.split("/")
            // console.log(item[4]+item[6])
            // var event = item[6].decode
            var url = location.href
            var items = url.split("/")
            console.log(items[4])
            axios.get("/api/benchpress/"+items[4]).then(response=>{
                console.log(response)
                var sample = response.data.weight.map(weight=>weight.weight)
                // console.log(sample)
                
                this.data = response.data.weight.map(weight=>weight.weight)
                this.labels = response.data.weight.map(weight=>weight.created_at)
                this.displayGraph();
            })
        }
      });
});
