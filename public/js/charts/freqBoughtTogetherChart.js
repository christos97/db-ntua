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
        let products = [], count =[]
        fetch("http://localhost:3000/api/freq_bought_together")
        .then(res => res.json())
        .then((result) => {
            for (let res of result ){
                products.push(res.nam1 + ' & ' +res.nam2)
                count.push(res.cnt)
            }
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'horizontalBar',
                data: {
                    labels: products,
                    datasets: [{
                        label: 'Frequently Bought Together',
                        data: count,
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