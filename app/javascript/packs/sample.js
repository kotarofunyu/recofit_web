import Vue from 'vue/dist/vue.esm.js'
var app = new Vue({
    el: '#chart',
    mounted: function(){
      var ctx = document.getElementById('myChart').getContext('2d');
      var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ['2019年1月', '2019年2月', '2019年3月', '2019年4月'],
          datasets: [{
              label: '四半期の売上数の遷移',
              data: [120, 190, 34, 58]
          }]
        }
      });
    }
  });