import Vue from 'vue/dist/vue.esm.js'
import axios from 'axios'
import { Bar } from 'vue-chartjs'
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
            var url = location.href
            var items = url.split("/")
            console.log(items[4] + items[6])
            console.log("/api/event/"+items[4]+"?name="+items[6])
            axios.get("/api/event/"+items[4]+"?name="+items[6]).then(response=>{
                console.log(response)
                this.data = response.data.weight.map(weight=>weight.weight)
                this.labels = response.data.weight.map(weight=>weight.created_at)
                this.displayGraph();
            })
        }
      });
});
