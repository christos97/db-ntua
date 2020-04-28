$(document).ready(function() {
   /* $('#customerTable thead tr').clone(true).appendTo( '#customerTable thead' );
    $('#customerTable thead tr:eq(1) th').each( function (i) {
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
    var table = $('#customerTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true
    } );


    $('#customerTable tbody tr').on('click',  function () {
        var customerProfile = table.row( this ).data();
        window.location = `http://localhost:3000/customers/${customerProfile[0]}`
    } );
} );

