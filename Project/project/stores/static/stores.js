function showAddBar() {
    var x = document.getElementById("add_panel");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "flex";
    } else {
        x.style.display = "none";
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

