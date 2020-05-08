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
                        label: 'Spot Sales',
                        data: spot_sells, 
                        backgroundColor: [
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)',
                            'rgba(52, 61, 69, 0.2)'
                        ],
                        borderColor: [
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)',
                            'rgba(52, 61, 69, 1)'
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