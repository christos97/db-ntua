'use strict';

class FrequentlyBoughtTogetherChart extends React.Component {
    constructor(props) {
        super(props)
        this.chartRef = React.createRef();
        this.state = {
            products: [],
            amount: 0
        }
    }
    
    componentDidMount() {
    
        fetch("http://localhost:3000/api/freq_bought_together")
        .then(res => res.json())
        .then(
          (result) => {
            
            this.setState({products: [...this.state.products, result]})
            
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'horizontalBar',
                data: {
                    labels: [result[0].nam1 + " + " +result[0].nam2, result[1].nam1 + " + " +result[1].nam2,result[2].nam1 + " + " +result[2].nam2 ,result[3].nam1 + " + " +result[3].nam2,result[4].nam1 + " + " +result[4].nam2,result[5].nam1 + " + " +result[5].nam2],
                    datasets: [{
                        label: 'Frequently Bought Together',
                        data: [result[0].cnt, result[1].cnt, result[2].cnt, result[3].cnt, result[4].cnt, result[5].cnt], // times bought together...result[..].whatever
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
                                beginAtZero: true,
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

ReactDOM.render(<FrequentlyBoughtTogetherChart/>, document.getElementById('frequently_bought_together_chart'));