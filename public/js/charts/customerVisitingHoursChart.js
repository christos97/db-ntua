'use strict';

Chart.defaults.global.legend.display = false;

class CustomerVisitingHoursChart extends React.Component {
    constructor(props) {
        super(props)
        this.chartRef = React.createRef();
    }

    componentDidMount() {
        let card = ((document.baseURI).split('/'))[4]
        let time_range = [
            '[09:00:00,10:00:00)',
            '[10:00:00,11:00:00)',
            '[11:00:00,12:00:00)',
            '[12:00:00,13:00:00)',
            '[13:00:00,14:00:00)',
            '[14:00:00,15:00:00)',
            '[15:00:00,16:00:00)',
            '[16:00:00,17:00:00)',
            '[17:00:00,18:00:00)',
            '[18:00:00,19:00:00)',
            '[19:00:00,20:00:00)',
            '[20:00:00,21:00:00]'
        ]
        let visits = []
        fetch(`http://localhost:3000/api/customer_visiting_hours/${card}`)
        .then(res => res.json())
        .then( (result) => {
            let i=0;
            console.log(result)
            for (let row of result) {
                if (row.Time_range !== time_range[i])
                    visits.push(0)
                else    
                    visits.push(row.cnt)
                i++
            }
            console.log(visits)
            this.chartRef.current.focus();
            this.myChart = new Chart(this.chartRef.current, {
                type: 'line',
                data: {
                    labels: ["09:00","10:00","11:00","12:00","13:00","14:00",
                    "15:00","16:00","17:00","18:00","19:00","20:00","21:00"],
                    datasets: [{
                        label: '',
                        data: visits, // times bought together...result[..].whatever
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

ReactDOM.render(<CustomerVisitingHoursChart/>, document.getElementById('customer_visiting_hours_chart'));