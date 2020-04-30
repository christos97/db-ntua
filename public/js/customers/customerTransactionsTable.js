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

    var totalAmountRange = document.getElementById("totalAmountRange")
    totalAmountRange.addEventListener('mouseup', () => {
        //alert(totalAmountRange.value)
        console.log(totalAmountRange.value)
        axios.post('http://localhost:3000/api/random',{max_price: totalAmountRange.value})
            .then(( result) =>console.log(result.data))
    })


} );