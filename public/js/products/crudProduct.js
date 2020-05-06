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

addProduct =  () => {
    
    let url = 'http://localhost:3000/products/addProduct'

    let body = {
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.querySelector('input[name="category"]').value
    }
    
    if (!validateInput(body)) 
        return
    else
        postData(url, body)
    
    for (let f in body) 
        $(`input[name=${f}`).val(''); 
}

editProduct = () => {

    let url = 'http://localhost:3000/products/editProduct'

    let body = {
        product: document.querySelector('input[name="product"]').value,
        barcode: document.getElementById('barcode').value,
        price: document.getElementById('price').value,
        name: document.getElementById('name').value,
        brand: document.getElementById('brand').value,
        category_id: document.querySelector('input[name="category"]').value
    }
    
    if (!validateInput(body)) 
        return
    else
        postData(url, body)

    for (let f in body) 
        $(`input[name=${f}`).val('');     
}

deleteProduct = () => {
    
    let url = 'http://localhost:3000/products/deleteProduct'
    
    let body = { barcode : document.querySelector('input[name="product"]').value }

    if (!validateInput(body)) 
        return
    else
        postData(url, body)
}
