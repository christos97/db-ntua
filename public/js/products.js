$(document).ready(function() {
   
    const validateInput =  (body) => {
    
        for (let f in body){
            
            if (body[f] === ""){
                alert("Please provide all fields")
                return 0
            }
    
            switch(f) {
    
                case 'barcode':
                    if (body[f].length !=10){
                        alert("Barcode length must be 10, provided: " + body[f].length)
                        $(`input[name=${f}`).val(''); 
                        return 0
                    }
                    break
    
                case 'price':
                    if (!body[f].match(/[+-]?([0-9]*[.])?[0-9]+/)){
                        alert("Price can contain only numbers and a dot (.)")
                        $(`input[name=${f}`).val(''); 
                        return 0
                    }
                    break     
            }
        }
         return 1   
    }

    var table = $('#productTable').DataTable( {
        paging: true,
        orderCellsTop: true,
        fixedHeader: true,
        bFilter: true,
        bInfo : true,
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

    const triggerUpdate = () => {
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert('Error updating table'))
    }
    
    $('#product_added').hide();
    $('#product_not_added').hide();

    $('#product_edited').hide();
    $('#product_not_edited').hide();

    $('#product_deleted').hide();
    $('#product_not_deleted').hide();

    const displayAlert = (alert) => {
        $(alert).show();
        setTimeout(() => { 
            $(alert).hide(); 
        }, 5000);   
    }

    const postData = (url, body, success, error) => {
        axios
            .post(url, body)
            .then( () => displayAlert(success))
            .catch( () => displayAlert(error))
    }  
    
    const addProduct =  () => {
    
        let url = 'http://localhost:3000/products/addProduct'
        let success = '#product_added'
        let error = '#product_not_added'
        let body = {
            barcode: document.getElementById('add_barcode').value,
            price: document.getElementById('add_price').value,
            name: document.getElementById('add_name').value,
            brand: document.getElementById('add_brand').value,
            category_id: document.querySelector('input[name="add_category"]').value
        }
        if (!validateInput(body)) return
        postData(url, body, success, error)
        for (let f in body) $(`input[name=${f}`).val(''); 
        
        return
    }
    
    const editProduct = () => {

        let url = 'http://localhost:3000/products/editProduct'
        let success = '#product_edited'
        let error = '#product_not_edited'
        let body = {
            barcode: document.getElementById('edit_barcode').value,
            price: document.getElementById('edit_price').value,
            name: document.getElementById('edit_name').value,
            brand: document.getElementById('edit_brand').value,
            category_id: document.querySelector('input[name="edit_category"]').value
        }
        if (!validateInput(body)) return
        postData(url, body, success, error)
        for (let f in body) $(`input[name=${f}`).val('')

        return     
    }
    
    const deleteProduct = () => {
        
        let url = 'http://localhost:3000/products/deleteProduct'
        let success = '#product_deleted'
        let error = '#product_not_deleted'
        let body = { barcode : document.getElementById('delete_barcode').value }
        if (!validateInput(body)) return
        postData(url, body, success, error)
        for (let f in body) $(`input[name=${f}`).val('')
        
        return
    }    
    
    document.getElementById('add-btn').onclick = () => {
        addProduct()
        triggerUpdate()
    }

    document.getElementById('edit-btn').onclick = () => {
        editProduct()
        triggerUpdate()
    }

    document.getElementById('delete-btn').onclick = () => {
        deleteProduct()
        triggerUpdate()
    }
});




