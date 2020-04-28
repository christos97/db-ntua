addProduct = function () {
    url = 'http://localhost:3000/products/addProduct'
    let body = {
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.getElementById('category_id').value
    }
    
    for (let f in body){
        if (body[f] == ""){
            alert("Please provide all fields")
            return
        }
    } 
    
    axios.post(url, body)
        .then( (result) => alert(result.data) )
        .catch( (error) => alert(error) )    
}


editProduct = function () {
    let barcode = document.querySelector('input[name="product"]').value
    let body = {
        initial_barcode: barcode,
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.getElementById('category_id').value
    }
    for (let f in body){
        if (body[f] == ""){
            alert("Please provide all fields")
            return
        }
    } 
    url = 'http://localhost:3000/products/editProduct'
    axios.post(url, body)
        .then( (result) => {
            alert(result.data) 
        })
        .catch( (error) => alert(error) )    
}

deleteProduct = function () {
    let barcode = document.querySelector('input[name="product"]').value    
    url = 'http://localhost:3000/products/deleteProduct'
    axios.post(url,{ barcode: barcode })
         .then( (result) => alert(result.data) )
         .catch( (error) => alert(error) )    
}
