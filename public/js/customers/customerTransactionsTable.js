$(document).ready(function() {
    $('#customerTransactionsTable thead tr').clone(true).appendTo( '#customerTransactionsTable thead' );
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
    var table = $('#customerTransactionsTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true
    } );

    $('#customerTransactionsTable tbody tr').on('click','td',  function () {
        var cell = table.cell( this ).data();
        console.log(cell)
        //window.location = `http://localhost:3000/customers/${customerProfile[0]}`
    } );
} );