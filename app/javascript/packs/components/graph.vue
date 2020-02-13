<template>
  <MainChart class="chart" :chartData="dataContents"/>
</template>

<script>
  import axios from 'axios'
  import MainChart from '../bar-chart.js';
  export default {
    data () {
      return {
        dataContents: null
        // chartData: {
        //   labels: ['2/1', '2/5', '2/9', '2/13', '2/17'],
        //   datasets: [
        //     {
        //       label: 'Sample1',
        //       data: arry,
        //       backgroundColor: [
        //         'rgba(255, 99, 132, 0.2)',
        //         'rgba(54, 162, 235, 0.2)',
        //         'rgba(255, 206, 86, 0.2)',
        //         'rgba(75, 192, 192, 0.2)',
        //         'rgba(153, 102, 255, 0.2)',
        //         'rgba(255, 159, 64, 0.2)'
        //       ],
        //       borderColor: [
        //         'rgba(255, 99, 132, 1)',
        //         'rgba(54, 162, 235, 1)',
        //         'rgba(255, 206, 86, 1)',
        //         'rgba(75, 192, 192, 1)',
        //         'rgba(153, 102, 255, 1)',
        //         'rgba(255, 159, 64, 1)'
        //       ],
        //       borderWidth: 1
        //     }
        //   ]
        // },
      }
    },
    created() {
      this.fillData()
    },
    methods: {
      fillData() {
        this.dataContents= {
          labels:['January', 'February', 'March'],
          datasets: [
            {
              label: 'Data reactive',
              backgroundColor: '#f8b979',
              data: this.setSample()
            }
          ]
        }
      },
      setSample () {
        var arry = [79.5, 80, 85];
        return arry;
        axios.get('http://localhost:3000/api/training_record/')
        .then(function (response) {
          var records = response.data.training_record.record
          var weight1 = records[0].event[0].set[0].weight
          console.log(weight1)
          return weight1
        })
      }
    },
    // mounted: function() {
    //     axios.get('http://localhost:3000/api/training_record/')
    //     .then(function (response) {
    //       var records = response.data.training_record.record
    //       var weight1 = records[0].event[0].set[0].weight
    //       console.log(weight1)
    //       console.log(records[0].event[0].set[0].weight)
    //     })
    // },
    components: {
      MainChart,
    }
  }
</script>