import { Line } from 'vue-chartjs'

export default {
    extends: Line,
    mounted () {
			var data;
      this.$http.get('api/rooms').then(response => {
        data = response.json
			}, response => {
        console.log(response);
			});

          this.renderChart({
                  labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                  datasets: [
                            {
                                        label: 'Data One',
                                        backgroundColor: '#f87979',
                                        data: [40, 39, 10, 40, 39, 80, 40]
                                      }
                          ]
                }, {responsive: true, maintainAspectRatio: false})
        }
}
