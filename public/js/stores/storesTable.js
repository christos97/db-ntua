$(document).ready(function() {
    
     var table = $('#storesTable').DataTable( {
         paging: true,
         orderCellsTop: true,
         fixedHeader: true
     } );
 
 
     $('#storesTable tbody tr').on('click',  function () {
         var store_id = table.row( this ).data();
         window.location = `http://localhost:3000/stores/${store_id[0]}`
     } );
 } );
 
 