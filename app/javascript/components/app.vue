<template>
  <div id='app'>
    <p>{{ message }}</p>
    <line-chart></line-chart>
    <averageOnMarket-chart></averageOnMarket-chart>
  </div>
</template>

<script>
  import lineChart from './RoomsChart.js'
  import averageOnMarketChart from './RoomsAverageOnMarket.js'
  export default {
    data: function () {
      return {
        message: "Analiza rynku mieszkan"
      }
    },
    components: {
       'line-chart': lineChart,
       'averageOnMarket-chart': averageOnMarketChart
    }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
