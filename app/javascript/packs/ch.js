import Vue from "vue/dist/vue.esm.js";
import { Bar } from "vue-chartjs";
import axios from "axios";
const urlItems = location.search.split("&");
const userID = urlItems[0].split("=")[1];
const eventName = urlItems[1].split("=")[1];
const axiosGetUrl =
  "/api/events/?user_id=" + userID + "&event_name=" + eventName;
var app = new Vue({
  el: "#chart",
  data: {
    labels: [],
    allData: [],
    mainData: [],
    upData: [],
    loading: true,
  },
  methods: {
    displayGraph: function() {
      var ctx = document.getElementById("myChart").getContext("2d");
      var myChart = new Chart(ctx, {
        type: "bar",
        data: {
          labels: this.labels,
          datasets: [
            {
              label: "重量の遷移",
              data: this.allData,
              backgroundColor: "rgba(231,130,32,0.9)",
            },
          ],
        },
        options: {
          maintainAspectRatio: false,
          scales: {
            yAxes: [
              {
                ticks: {
                  beginAtZero: true,
                  min: 0,
                },
              },
            ],
          },
        },
      });
    },
    updateGraph: function() {
      this.allData = [10, 20, 30, 40, 50];
      console.log("aaaa");
    },
  },
  mounted: function() {
    axios.get(axiosGetUrl).then((response) => {
      console.log(response);
      this.allData = response.data.weight.map((weight) => weight.weight);
      this.labels = response.data.weight.map((weight) => weight.created_at);
      this.loading = false;
      this.displayGraph();
    });
  },
});
