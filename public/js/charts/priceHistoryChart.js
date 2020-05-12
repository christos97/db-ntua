'use strict';

class PriceHistoryChart extends React.Component {
    constructor(props) {
        super(props)
        this.chartRef = React.createRef();
    }
    
    componentDidMount() {
        let barcode = ((document.baseURI).split('/'))[4]
        console.log(barcode)
        fetch(`http://localhost:3000/api/price_history/${barcode}`)
        .then(res => res.json())
        .then((result) => {
            console.log(result)
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'line',
                data: {
                    labels: ["09:00","10:00"],
                    datasets: [{
                        label: '$',
                        fill:false,
                        data: [''], 
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
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
                                stepSize: 1,
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

ReactDOM.render(<PriceHistoryChart/>, document.getElementById('price_history__chart'));