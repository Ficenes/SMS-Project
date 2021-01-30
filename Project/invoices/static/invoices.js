function showDetails() {
    var x = document.getElementById("invs");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "flex";
    } else {
        x.style.display = "none";
    }
}