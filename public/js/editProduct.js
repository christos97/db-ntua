sendData = function () {
    let init = document.querySelector('select.form-control').value
    let prev_barcode = init.split(" ")
    url = 'http://localhost:3000/products/editProduct'
    axios.post(url,{
        initial_barcode: prev_barcode[3],
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.getElementById('category_id').value,
    })
        .then( (result) => alert(result.data) )
        .catch( (error) => alert(error) )    
}

