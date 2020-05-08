$(document).ready(function() {
    var table = $('#productTable').DataTable( {
        paging: true,
        columns: [
            { data: 'Barcode'},
            { data: 'Price'},
            { data: 'Name'},
            { data: 'Brand'},
            { data: 'Category'}
        ]
    } );

    const updateProductTable = (products) => {
        table.clear()
        for (let prod of products){
            table.row.add({
                'Barcode' : prod.Barcode,
                'Price': prod.Price,
                'Name': prod.prod_name,
                'Brand': prod.Brand_name,
                'Category' : prod.categ_name,
            })
        }
        table.draw() 
    }
    

    const add_close_btn = document.getElementById('add-close-btn')
    add_close_btn.onclick = () => {
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert(err))
    }
    const edit_close_btn = document.getElementById('edit-close-btn')
    edit_close_btn.onclick = () => {
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert(err))
    }
    const delete_close_btn = document.getElementById('delete-close-btn')
    delete_close_btn.onclick = () => {
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert(err))
    }
} );
