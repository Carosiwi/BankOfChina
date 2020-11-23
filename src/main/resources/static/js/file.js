function eliminarPost(rut) {
    if (window.confirm("¿Esta seguro que desea eliminar este cliente?")) {
        document.getElementById("delete").submit();        
    }
}


let limite8 = (object) => {

    
    if (object.value.length > object.maxLength)
      object.value = object.value.slice(0, object.maxLength)
    
    }
    
    
    function ValidaLongitud(campo, longitudMaxima) {
    try {
        if (campo.value.length > (longitudMaxima - 1))
            return false;
        else
            return true;             
    } catch (e) {
        return false;
    }
}


function soloDigitoVerificador(e) {
    var key = e.keyCode || e.which,
        tecla = String.fromCharCode(key).toUpperCase(),
        letras = "1234567890kK",
        especiales = [8],
        tecla_especial = false;
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        return false;
    }
}


function soloNumeros(e) {
    var key = e.keyCode || e.which,
        tecla = String.fromCharCode(key).toLowerCase(),
        letras = "1234567890",
        especiales = [8],
        tecla_especial = false;
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        return false;
    }
}