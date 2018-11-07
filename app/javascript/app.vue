<template>
  <div id='app'>
    <p>{{ message }}</p>
    <p> COUNT</p>
    <line-chart></line-chart>
    <p> AVERAGE ON MARKET </p>
    <averageOnMarket-chart></averageOnMarket-chart>
    <p> AVERAGE PRICE </p>
    <averagePrice-chart></AveragePrice-chart>
    <roomsMap></roomsMap>
  </div>
</template>

<script>
  import lineChart from './RoomsChart.js'
  import averageOnMarketChart from './RoomsAverageOnMarket.js'
  import averagePrice  from './RoomsAveragePrice.js'
  import RoomsMap  from './RoomsMap.vue'
  export default {
    data: function () {
      return {
        message: "Analiza rynku mieszkan"
      }
    },
    components: {
       'line-chart': lineChart,
       'averageOnMarket-chart': averageOnMarketChart,
       'averagePrice-chart': averagePrice,
       'roomsMap': RoomsMap
    }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
