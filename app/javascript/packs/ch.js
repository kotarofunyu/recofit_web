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
    objectContainer: [],
    labels: [],
    data: [],
    loading: true,
    mainChecked: false,
    renewalChecked: false,
    graphVar: '全て'
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
              data: this.data,
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
    }
  },
  watch: {
    graphVar: function(newval, oldval) {
      if (this.graphVar == "全て") {
        this.data = this.objectContainer.data.weight.map((weight) => weight.weight);
        this.labels = this.objectContainer.data.weight.map((weight) => weight.created_at);
      } else if (this.graphVar == "メインセット") {
        var mainData = this.objectContainer.data.weight.filter(function(item, index) {
          if (item.main == true) return true;
        });
        this.data = mainData.map((weight) => weight.weight)
        this.labels = mainData.map((weight) => weight.created_at);
      } else if (this.graphVar == "記録更新") {
        var renewalData = this.objectContainer.data.weight.filter(function(item, index) {
          if (item.renewal == true) return true;
        });
        this.data = renewalData.map((weight) => weight.weight)
        this.labels = renewalData.map((weight) => weight.created_at);
      }
      this.displayGraph();
    }
  },
  mounted: function() {
    axios.get(axiosGetUrl).then((response) => {
      this.objectContainer = response
      this.data = response.data.weight.map((weight) => weight.weight);
      this.labels = response.data.weight.map((weight) => weight.created_at);
      this.loading = false;
      this.displayGraph();
    });
  }
});
