$(document).ready(function() {
    
    var table = $('#storeTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true,
        columns: [
            { data: 'Customer_card'},
            { data: 'Customer_name'},
            { data: 'Date_time'},
            { data: 'Total_piecies'},
            { data: 'Total_amount'},
            { data: 'Payment_method'}
        ]
    } );

    
    const updateTable = function (json) {
        table.clear()
        for (let i=0; i<json.data.length; i++){
           table.row.add({
                'Customer_card' : json.data[i].Card,
                'Customer_name' : json.data[i].Name,
                'Date_time' : json.data[i].Date_time,
                'Total_piecies': json.data[i].Total_piecies,
                'Total_amount': json.data[i].Total_amount,
                'Payment_method': json.data[i].Payment_method
           })
        }
        table.draw() 
    }


    let min_amount,
        max_amount
    
    $("#amount_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 500,
        from: 0,
        to: 500,
        grid: false,
        skin: 'round',
        
        onStart: function (data) {
            min_amount = data.from
            max_amount = data.to
        },

        onFinish: function(data){
            min_amount = data.from
            max_amount = data.to

            axios
                .post('http://localhost:3000/stores/transactions',{
                    min_price: data.from,
                    max_price: data.to,
                    min_pieces: min_pieces,
                    max_pieces: max_pieces,
                    payment_method: selectedValue
                })
                .then( (result) => updateTable(result) )
                .catch( (err) => {
                    if (err.response.status == 404) 
                        table.clear().draw()
                })
        }
    })

    
    let min_pieces,
        max_pieces 

    $("#pieces_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 50,
        from: 1,
        to: 50,
        grid: false,
        skin: 'round',
        onStart: function (data) {
            min_pieces = data.from
            max_pieces = data.to
        },
        onFinish: function(data){
            min_pieces = data.from
            max_pieces = data.to
            
            axios
                .post('http://localhost:3000/stores/transactions',{
                    min_price: min_amount,
                    max_price: max_amount,
                    min_pieces : data.from,
                    max_pieces : data.to,
                    payment_method: selectedValue
                })
                .then( (result) => updateTable(result) )
                .catch( (err) => {
                    if (err.response.status == 404) 
                        table.clear().draw()
                })
        }
    })   

    const btn = document.querySelector('#radio_buttons');
    let selectedValue='';
    
    btn.onclick = () => {
        const rbs = document.querySelectorAll('input[name="payment_method"]');
        for (let rb of rbs) {
            if (rb.checked) {
                selectedValue = rb.value;
                break;
            }
        }
        axios
            .post('http://localhost:3000/stores/transactions',{
                min_price: min_amount,
                max_price: max_amount,
                min_pieces : min_pieces,
                max_pieces : max_pieces,
                payment_method: selectedValue
            })
                .then( (result) => updateTable(result) )
                .catch( (err) => {
                    if (err.response.status == 404) 
                        table.clear().draw()
                })
    }

} );