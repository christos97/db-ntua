$(document).ready(function() {
 
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

