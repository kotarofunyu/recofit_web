import { Bar } from 'vue-chartjs'
export default {
  extends: Bar,
  props: ['chartData', 'options'], // propsに chartData と options を定義
  mounted () {
    this.renderChart(this.chartData, this.options)
  }
}