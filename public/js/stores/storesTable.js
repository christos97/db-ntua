$(document).ready(function() {
    /*$('#storesTable thead tr').clone(true).appendTo( '#storesTable thead' );
     $('#storesTable thead tr:eq(0) th').each( function (i) {
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
     var table = $('#storesTable').DataTable( {
        buttons: [
            {
                text: "Button",
                action: function(e, dt, node, config ){
                    console.log("?????")
                }
            }
        ],
         paging: true,
         orderCellsTop: true,
         fixedHeader: true
     } );
 
 
     $('#storesTable tbody tr').on('click',  function () {
         var store_id = table.row( this ).data();
         window.location = `http://localhost:3000/stores/${store_id[0]}`
     } );
 } );
 
 