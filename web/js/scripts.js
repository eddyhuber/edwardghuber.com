function menuNav(elem) {
    var selectedItems = document.getElementsByClassName("selected")
    var i;
    for(i=0; i< selectedItems.length; i++) {
        selectedItems[i].classList.replace("selected", "unselected");
    }
    elem.classList.replace("unselected", "selected");
}