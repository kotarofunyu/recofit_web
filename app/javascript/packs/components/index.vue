<template>
  <div>
    <h3>棒グラフを描画する</h3>
    <BarChart/>
  </div>
</template>

<script>
// インポート
import { Bar } from 'vue-chartjs'

var BarChart = {
  extends: Bar,
  mounted () {
    this.renderChart({
      //ラベル ここを日付にする
      labels:["１月","２月","３月","４月"],
      //データ詳細
      datasets: [{
        //データタイトル ここを種目名にする
        label:'ベンチプレスマックス',
        //データ ここが種目の重量
        data: [75,80,90,100]
      }]
    });
  }
}

export default {
  name: 'Test',
  components: {
    BarChart
  }
} 

</script>