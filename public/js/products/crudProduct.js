validateInput =  (body) => {
    
    for (let f in body){
    
        if (body[f] == ""){
            alert("Please provide all fields")
            return 0
        }

        switch(f) {
            
            case 'barcode':
                if (body[f].length !=10){
                    alert("Barcode length must be 10, provided: " + body[f].length)
                    return false
                }
                break

            case 'price':
                if (!body[f].match(/[+-]?([0-9]*[.])?[0-9]+/)){
                    alert("Price can contain only numbers and a dot (.)")
                    return false
                }
                break     
        }
        $(`input[name=${f}`).val('');     
    }
     return true   
}


addProduct =  () => {
    
    url = 'http://localhost:3000/products/addProduct'

    let body = {
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.querySelector('input[name="category"]').value
    }
    
    if (!validateInput(body)) return
    
    axios
        .post(url, body)
        .then( (result) => alert(result.data) )
        .catch( (error) => alert(error) )
    
    for (let f in body) 
        $(`input[name=${f}`).val(''); 
}


editProduct = () => {

    url = 'http://localhost:3000/products/editProduct'

    let body = {
        product: document.querySelector('input[name="product"]').value,
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.querySelector('input[name="category"]').value
    }
    
    if (!validateInput(body)) return
    
    axios
        .post(url, body)
        .then( (result) => alert(result.data) )
        .catch( (error) => alert(error) )

    for (let f in body) 
        $(`input[name=${f}`).val('');     
}

deleteProduct = () => {
    
    let barcode = document.querySelector('input[name="product"]').value
    
    if (barcode == ""){
        alert('Please Provide all fields')
        barcode.innerHTML = "";
        return
    }    

    url = 'http://localhost:3000/products/deleteProduct'
    
    axios
        .post(url,{ barcode: barcode })
        .then( (result) => alert(result.data) )
        .catch( (error) => alert(error) )
    
    barcode.innerHTML = "";    
}
