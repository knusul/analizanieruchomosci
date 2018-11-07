import { Line } from 'vue-chartjs'

export default {
  extends: Line,
  mounted () {
    var data = [];
    var labels = [];
    this.$http.get('api/rooms/average_price').then(response => {
      return response.json()
    }, response => {
      console.log(response);
    }).then(response => {
      for(const index of response['data']){
        for (const [key, value] of Object.entries(index)) {
          labels.push(key);
          data.push(value);
        };
      };
      this.renderChart({
        labels: labels,
        datasets: [
          {
            label: 'Data One',
            backgroundColor: '#f87979',
            data: data
          }
        ]
      }, {responsive: true, maintainAspectRatio: false})

    });
  }
}
