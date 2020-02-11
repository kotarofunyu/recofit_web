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
            axios.get('/api/weight').then(response=>{
                // var sample = response.data.set.map(set=>set.weight)
                // console.log(sample)
                this.data = response.data.set.map(set=>set.weight)
                this.labels = response.data.set.map(set=>set.created_at)
                this.displayGraph();
            })
        }
      });
});
