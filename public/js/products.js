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

    const triggerUpdate = () => {
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert(err))
    }
    
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
    
    const postData = (url, body) => {
        axios
            .post(url, body)
            .then( (result) => alert(result.data) )
            .catch( (error) => alert(error) )
    }

    const addProduct =  () => {
    
        let url = 'http://localhost:3000/products/addProduct'
    
        let body = {
            barcode: document.getElementById('add_barcode').value,
            price: document.getElementById('add_price').value,
            name: document.getElementById('add_name').value,
            brand: document.getElementById('add_brand').value,
            category_id: document.querySelector('input[name="add_category"]').value
        }
        
        if (!validateInput(body)) 
            return
        else
            postData(url, body)
        
        axios
            .get('http://localhost:3000/products/update_products_table')
            .then((result) => updateProductTable(result.data))
            .catch( (err) => alert(err))
        
        for (let f in body) 
            $(`input[name=${f}`).val(''); 
        return
    }
    
    const editProduct = () => {

        let url = 'http://localhost:3000/products/editProduct'
    
        let body = {
            prev_barcode: document.getElementById('edit_previous_barcode').value,
            new_barcode: document.getElementById('edit_barcode').value,
            price: document.getElementById('edit_price').value,
            name: document.getElementById('edit_name').value,
            brand: document.getElementById('edit_brand').value,
            category_id: document.querySelector('input[name="edit_category"]').value
        }
        
        if (!validateInput(body)) 
            return
        else
            postData(url, body)
    
        for (let f in body) 
            $(`input[name=${f}`).val('')
        return     
    }
    
    const deleteProduct = () => {
        
        let url = 'http://localhost:3000/products/deleteProduct'
        
        let body = { barcode : document.getElementById('delete_barcode').value }
    
        if (!validateInput(body)) 
            return
        else
            postData(url, body)
        for (let f in body) 
            $(`input[name=${f}`).val('')
        
        return
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

    const add_btn = document.getElementById('add-btn')
    add_btn.onclick = () => {
        addProduct()
        triggerUpdate()
    }

    const edit_btn = document.getElementById('edit-btn')
    edit_btn.onclick = () => {
        editProduct()
        triggerUpdate()
    }

    const delete_btn = document.getElementById('delete-btn')
    delete_btn.onclick = () => {
        deleteProduct()
        triggerUpdate()
    }
});




