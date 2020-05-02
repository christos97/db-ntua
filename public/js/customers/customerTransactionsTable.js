$(document).ready(function() {
    
    var table = $('#customerTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true,
        columns: [
            { data: 'Barcode'},
            { data: 'Brand_name'},
            { data: 'Price'},
            { data: 'categ_name'},
            { data: 'prod_name'},
        ]
    } );
    const update = function (json) {
        table.clear()
        for (let i=0; i<json.data.length; i++){
           table.row.add({
               'Barcode' : json.data[i].Barcode,
               'Brand_name': json.data[i].Brand_name,
               'Price': json.data[i].Price,
               'categ_name': json.data[i].categ_name,
               'prod_name': json.data[i].prod_name
           })
        }
        table.draw() 
    }
    
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
                 .then((result) => update(result) )

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
                 .then(( result) =>{
                    console.log(result)
                    //table.clear().rows.add(result).draw();
                })
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