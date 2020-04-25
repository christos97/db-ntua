class FormContainer extends React.Component {
  
    constructor(props) {
        super(props)
        this.state = { username: '' }
        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
      }

    async componentDidMount() {
        const response = await fetch(`http://localhost:3000/api/products/freq_bought_together`)
        const data = await response.json()
        //this.setState({name : data[0].Name , loading: false})
    }
    
      handleChange(event) {
        this.setState({ username: event.target.value })
      }
    
      handleSubmit(event) {
        alert(this.state.username)
        event.preventDefault()
      }
    
      render() {
        return (
          <form onSubmit={this.handleSubmit}>
            <input
              type="text"
              onChange={this.handleChange}
            />
            <input type="submit" value="Submit" />
          </form>
        )
      }
  
  }

  ReactDOM.render(<FormContainer/>, document.getElementById('form_container'));