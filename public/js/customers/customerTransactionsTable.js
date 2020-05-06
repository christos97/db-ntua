$(document).ready(function() {
    
    let table = $('#customerTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true,
        columns: [
            { data: 'Date_time'},
            { data: 'Total_piecies'},
            { data: 'Total_amount'},
            { data: 'Payment_method'},
            { data: 'Store'},
            { data: 'Receipt'}
        ]
    } );

    $('#customerTransactionsTable tbody tr').on('click',  function () {
        let receipt = table.row( this ).data().Receipt
        window.location = `http://localhost:3000/customers/transactions/${receipt}`
    } );
    
       
    const updateTable = (transactions) => {
        table.clear()
        for (let trans of transactions){
            table.row.add({
                'Date_time' : trans.Date_time,
                'Total_piecies': trans.Total_piecies,
                'Total_amount': trans.Total_amount,
                'Payment_method': trans.Payment_method,
                'Store' : `${trans.Street} ${trans.Number_}`,
                'Receipt': trans.Trans_id
            })
            table.on('click','tbody tr',  function () {
                let receipt = table.row( this ).data().Receipt
                window.location = `http://localhost:3000/customers/transactions/${receipt}`
            } )
        }
        table.draw() 

    }

    const url = 'http://localhost:3000/customers/transactions'
    let payment_method='';
    let min_amount,
        max_amount,
        min_pieces,
        max_pieces; 
    
    $("#amount_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 0,
        to: 1000,
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
                .post(url,{
                    min_price: data.from,
                    max_price: data.to,
                    min_pieces: min_pieces,
                    max_pieces: max_pieces,
                    payment_method: payment_method
                })
                .then((result) => updateTable(result.data) )
                .catch( (err) => {
                    if (err.response.status == 404) 
                        table.clear().draw()
                })
        }   
    })
        
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
                .post(url,{
                    min_price: min_amount,
                    max_price: max_amount,
                    min_pieces : data.from,
                    max_pieces : data.to,
                    payment_method: payment_method
                })
                .then(( result) => updateTable(result.data) )
                .catch( (err) => {
                    if (err.response.status == 404) 
                        table.clear().draw()
                })
        }
    })   

    const btn = document.querySelector('#radio_buttons');
    
    btn.onclick = () => {
        
        const rbs = document.querySelectorAll('input[name="payment_method"]');
        for (let rb of rbs) {
            if (rb.checked) {
                payment_method = rb.value;
                break;
            }
        }
        
        axios
            .post(url,{
                min_price: min_amount,
                max_price: max_amount,
                min_pieces : min_pieces,
                max_pieces : max_pieces,
                payment_method: payment_method
            })
            .then(( result) => updateTable(result.data))
            .catch( (err) => {
                if (err.response.status == 404) 
                    table.clear().draw()
            })
    }
} );