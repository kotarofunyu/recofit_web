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
            var urlBeforeDecode = location.href
            var urlDecoded = decodeURI(urlBeforeDecode)
            var item = urlDecoded.split("/")
            console.log(item[4]+item[6])
            var event = item[6].decode
            axios.get("/api/"+item[4]+"/"+"ベンチプレス").then(response=>{
                // var sample = response.data.set.map(set=>set.weight)
                // console.log(sample)
                console.log(response)
                this.data = response.data.set.map(set=>set.weight)
                this.labels = response.data.set.map(set=>set.created_at)
                this.displayGraph();
            })
        }
      });
});
