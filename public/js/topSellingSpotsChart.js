'use strict';

const e = React.createElement;
class TopSellingSpotsChart extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            items: []
        }
        this.chartRef = React.createRef();
    }

    componentDidMount() {
        fetch("http://localhost:3000/api/products")
        .then(res => res.json())
        .then(
          (result) => {
            this.setState({items: result})
          },
          (error) => {
            this.setState({
              error
            });
          }
        )
        
        
        this.chartRef.current.focus();
        this.myChart = new Chart(this.chartRef.current, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                datasets: [{
                    label: 'Top Selling Spots',
                    data: [12, 19, 3, 5, 2, 3],
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
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    }

    render(){
        return (
            <div>
                <canvas ref={this.chartRef} />
            </div>
        );
    }
}

const domContainer = document.getElementById('top_selling_spots_chart');
ReactDOM.render(<TopSellingSpotsChart/>, domContainer);