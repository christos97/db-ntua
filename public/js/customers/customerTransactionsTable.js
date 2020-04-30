$(document).ready(function() {
    
    /*$('#customerTransactionsTable thead tr').clone(true).appendTo( '#customerTransactionsTable thead' );
    $('#customerTransactionsTable thead tr:eq(1) th').each( function (i) {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
 
        $( 'input', this ).on( 'keyup change', function () {
            if ( table.column(i).search() !== this.value ) {
                table
                    .column(i)
                    .search( this.value )
                    .draw();
            }
        } );
    } );
    */
    
    var table = $('#customerTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true
    } );

    
    $("#amount_slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 200,
        to: 500,
        grid: false,
        skin: 'round',
        onFinish: function(data){
            axios.post('http://localhost:3000/api/random',{minx_price: data.from_value , max_price: data.to_value})
                 .then(( result) =>console.log(result))
        }
    })   

    


} );