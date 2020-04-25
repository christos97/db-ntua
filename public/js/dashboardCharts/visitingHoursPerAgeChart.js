'use strict';

class VisitingHoursPerAgeChart extends React.Component {
    constructor(props) {
        super(props)
        this.chartRef = React.createRef();
    }
    
    componentDidMount() {
    
        fetch("http://localhost:3000/api/products/freq_bought_together")
        .then(res => res.json())
        .then(
          (result) => {
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'line',
                data: {
                    labels: ["09:00","10:00","11:00","12:00","13:00","14:00",
                    "15:00","16:00","17:00","18:00","19:00","20:00","21:00"],
                    datasets: [{
                        label: '<30',
                        data: [5, 8, 12, 5, 6, 3], // times bought together...result[..].whatever
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                        ],
                        borderWidth: 2
                    },
                    {
                        label: '31-45',
                        data: [12, 19, 3, 5, 2, 3], // times bought together...result[..].whatever
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.2)',
                       ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                        ],
                        borderWidth: 2
                    },
                    {
                        label: '46-65',
                        data: [12, 19, 3, 5, 2, 3], // times bought together...result[..].whatever
                        backgroundColor: [
                            'rgba(255, 206, 86, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 206, 86, 1)',
                        ],
                        borderWidth: 2
                    },
                    {
                        label: '65+',
                        data: [12, 19, 3, 5, 2, 3], // times bought together...result[..].whatever
                        backgroundColor: [
                            'rgba(39, 183, 36, 0.2)',
                        ],
                        borderColor: [
                            'rgba(39, 183, 36, 1)',
                        ],
                        borderWidth: 2
                    }
                ]
                },
                options: {
                    legend: {
                        labels: {
                            fontColor: 'black'
                        }
                    },
                    scales: {
                        yAxes: [{
                            label:{},
                            ticks: {
                                label   : 'Value',
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

ReactDOM.render(<VisitingHoursPerAgeChart/>, document.getElementById('visiting_hours_per_age_chart'));