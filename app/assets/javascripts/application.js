// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function displayDiv()
{
    var divstyle = new String();
    divstyle = document.getElementById("homeBtn").style.display;
    if(divstyle.toLowerCase()=="block" || divstyle == "")
    {
        document.getElementById("homeBtn").style.display = "none";
    }
    else
    {
        document.getElementById("homeBtn").style.display = "block";
    }
}

function addInput()
{
    var i = parseInt(document.getElementById('ingredientCount').value);
    if(i<15)
    {
        var ingredient = document.getElementById('needed_ingredient_ingredient_' + i);
        var quantity   = document.getElementById('needed_ingredient_quantity_' + i);
        var unit       = document.getElementById('needed_ingredient_unit_' + i);
        var fieldR     = document.getElementById('ing');

        i++;

        var clone_ingredient = ingredient.cloneNode(true);
        var clone_quantity   = quantity.cloneNode(false);
        var clone_unit       = unit.cloneNode(true);
        var addbutton        = document.getElementById('addButton');

        clone_ingredient.setAttribute('id', 'needed_ingredient_ingredient_' + i);
        clone_ingredient.setAttribute('name', 'needed_ingredient[ingredient][' + i + ']');
        clone_ingredient.selectedIndex = 0;

        clone_quantity.setAttribute('id', 'needed_ingredient_quantity_' + i);
        clone_quantity.setAttribute('name', 'needed_ingredient[quantity][' + i + ']');
        clone_quantity.value='';

        clone_unit.setAttribute('id', 'needed_ingredient_unit_' + i );
        clone_unit.setAttribute('name', 'needed_ingredient[unit][' + i + ']');
        clone_unit.selectedIndex = 0;

        fieldR.removeChild(addbutton);
        fieldR.appendChild(clone_ingredient);
        fieldR.appendChild(clone_quantity);
        fieldR.appendChild(clone_unit);
        fieldR.appendChild(addbutton);

        document.getElementById('ingredientCount').value = i;
    }
}