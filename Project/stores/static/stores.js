function showAddBar() {
    var y = document.getElementById("filter_form");
    var x = document.getElementById("add_panel");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "flex";
    } else {
        x.style.display = "none";
    }
    if (y.style.display == "flex" || y.style.display == "") {
        y.style.display = "none";
    } else {
        y.style.display = "none";
    }
}

function showFilterBar() {
    var x = document.getElementById("filter_form");
    var y = document.getElementById("add_panel");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "flex";
    } else {
        x.style.display = "none";
    }
    if (y.style.display == "flex" || y.style.display == "") {
        y.style.display = "none";
    } else {
        y.style.display = "none";
    }
}

function showEditBar() {
    let x = document.querySelectorAll(".edit");
    for (let i = 0; i< x.length; i++){
        if (x[i].style.display == "none" || x[i].style.display == "") {
            x[i].style.display = "table-cell";
        } 
        else {
            x[i].style.display = "none";
        }
    }
}

function showDeleteBar() {
    let x = document.querySelectorAll(".delete");
    for (let i = 0; i< x.length; i++){
        if (x[i].style.display == "none" || x[i].style.display == "") {
            x[i].style.display = "table-cell";
        } 
        else {
            x[i].style.display = "none";
        }
    }
}