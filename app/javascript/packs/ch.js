import Vue from 'vue/dist/vue.esm.js'
import { Bar } from 'vue-chartjs'
import axios from 'axios'

// document.addEventListener("DOMContentLoaded", function() {
    const url = location.href
    const items = url.split("/")
    const axiosGetUrl = "/api/event/"+items[4]+"?name="+items[6]
    var app = new Vue({
        el: '#chart',
        data: {
            labels: [],
            data: [],
            loading: true
        },
        methods: {
            displayGraph: function(){
                var ctx = document.getElementById('myChart').getContext('2d');
                var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: this.labels,
                    datasets: [{
                        label: '重量の遷移',
                        data: this.data,
                        backgroundColor:'#EE9428'
                    }]
                  }
                });
            },
        },
        mounted: function(){
            axios
                .get(axiosGetUrl)
                .then(response=>{
                    console.log(response);
                    this.data = response.data.weight.map(weight=>weight.weight);
                    this.labels = response.data.weight.map(weight=>weight.created_at);
                    this.loading = false;
                    this.displayGraph();
                    }
                )
        }
      });
// });
