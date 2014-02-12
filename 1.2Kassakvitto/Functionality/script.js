"use strict"

// Funktion som hittar textboxen, ger den fokus och markerar eventuell text i den
var ReceiptCalculator = {
    init: function () {
        var textField = document.getElementById("AmountBox");

        textField.focus();
        textField.select();
    },
};

window.addEventListener("load", ReceiptCalculator.init, false);