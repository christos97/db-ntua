'use strict';

Chart.defaults.global.legend.display = false;

class TopSellingSpotsChart extends React.Component {
    constructor(props) {
        super(props)
        this.chartRef = React.createRef();
    }

    componentDidMount() {
        let spot_position = [] , spot_sells = []
        fetch("http://localhost:3000/api/top_selling_spots")
        .then(res => res.json())
        .then((spots) => {
            for (let spot of spots){ 
                spot_position.push('Alley: ' + spot.Alley + ', Shelf: ' + spot.Shelf)
                spot_sells.push(spot.place_sells)
            }
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'horizontalBar',
                data: {
                    labels: spot_position,
                    datasets: [{
                        label: '',
                        data: spot_sells, 
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 2
                    }]
                },
                options: {
                    legend: {
                        labels: {
                            fontColor: 'black'
                        }
                    },
                    scales: {
                        yAxes: [{
                            ticks: {
                                fontColor: 'black',
                                fontSize: 14,
                                beginAtZero: true
                            }
                        }],
                        xAxes: [{
                            ticks: {
                                fontColor: 'black',
                                fontSize: 14,
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
          },
          (error) => {
            this.setState({
              error
            });
          }
        )
    }

    render(){
        return (
            <div>
                <canvas ref={this.chartRef} />
            </div>
        );
    }
}

ReactDOM.render(<TopSellingSpotsChart/>, document.getElementById('top_selling_spots_chart'));