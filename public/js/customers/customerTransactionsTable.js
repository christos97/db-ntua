$(document).ready(function() {
    
    var table = $('#customerTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true
    } );

    let amount = $("#amount_slider").data("ionRangeSlider");
     console.log(amount)
    $("#amount_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 200,
        to: 500,
        grid: false,
        skin: 'round',
        onFinish: function(data){
            axios.post('http://localhost:3000/api/transactions',{
                min_price: data.from,
                max_price: data.to
            })
                 .then(( result) =>console.log(result))
        }
    })
    
    $("#date_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 200,
        to: 500,
        grid: false,
        skin: 'round',
        onFinish: function(data){
            axios.post('http://localhost:3000/api/transactions',{
                from_date: data.from,
                to_date: data.to
            })
                 .then(( result) =>console.log(result))
        }
    })
    
    $("#pieces_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 200,
        to: 500,
        grid: false,
        skin: 'round',
        onFinish: function(data){
            console.log(customer[0].Card)
            axios.post('http://localhost:3000/api/transactions',{
                min_pieces: data.from,
                max_pieces: data.to
            })
                 .then(( result) =>console.log(result))
        }
    })   

    


} );