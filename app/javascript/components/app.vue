<template>
  <div id='app'>
    <p>{{ message }}</p>
    <line-chart></line-chart>
  </div>
</template>

<script>
  import lineChart from './RoomsChart.js'
  export default {
    data: function () {
      return {
        message: "Analiza rynku mieszkan"
      }
    },
    components: {
       'line-chart': lineChart
    }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
