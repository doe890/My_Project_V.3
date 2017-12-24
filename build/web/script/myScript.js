
var data;
var xhrURL = 'Jfile/data.json';
var request = new XMLHttpRequest();
request.open('GET', xhrURL);
request.responseType = 'text';

request.onload = function () {
    if (request.status === 200) {
        var dataText = request.response;
        data = JSON.parse(dataText);
        sPark(data);
        mavicPro(data);
        phantomPro(data);
    } else {
        console.log('Network request for products.json failed with response ' + request.status + ': ' + request.statusText)
    }
};
request.send();

function sPark(dataspark) {
    var spark = document.querySelectorAll('.spark');
    for (var i = 0; i < spark.length; i++) {
        spark[i].textContent = dataspark.products[0].productname;
    }
    var spec = document.querySelectorAll('.sspec');
    for (var i = 0; i < spec.length; i++) {
        var spn1 = document.createElement('span');
        var spn2 = document.createElement('span');
        var spn3 = document.createElement('span');
        spn1.textContent = dataspark.products[0].function[0];
        spn2.textContent = dataspark.products[0].function[1];
        spn3.textContent = dataspark.products[0].function[2];
        spec[i].appendChild(spn1);
        spec[i].appendChild(spn2);
        spec[i].appendChild(spn3);
    }
    var des = document.querySelectorAll('.sdesc');
    for (var i = 0; i < des.length; i++) {
        des[i].textContent = dataspark.products[0].description + '.';
    }
    var price = document.querySelectorAll('.sprice');
    for (var i = 0; i < price.length; i++) {
        price[i].textContent = 'USD $' + dataspark.products[0].price;
    }
}

function mavicPro(datamv) {
    var mavic = document.querySelectorAll('h2.mavic');
    for (var i = 0; i < mavic.length; i++) {
        mavic[i].textContent = datamv.products[1].productname;
        var spn = document.createElement('span');
        spn.style.color = '#eabc63';
        spn.textContent = ' pro';
        mavic[i].appendChild(spn);
    }

    var spec = document.querySelectorAll('.mspec');
    for (var i = 0; i < spec.length; i++) {
        var spn1 = document.createElement('span');
        var spn2 = document.createElement('span');
        var spn3 = document.createElement('span');
        spn1.textContent = datamv.products[1].function[0];
        spn2.textContent = datamv.products[1].function[1];
        spn3.textContent = datamv.products[1].function[2];
        spec[i].appendChild(spn1);
        spec[i].appendChild(spn2);
        spec[i].appendChild(spn3);
    }

    var des = document.querySelectorAll('.mdesc');
    for (var i = 0; i < des.length; i++) {
        des[i].textContent = datamv.products[1].description + '.';
    }

    var price = document.querySelectorAll('.mprice');
    for (var i = 0; i < price.length; i++) {
        price[i].textContent = 'USD $' + datamv.products[1].price;
    }

}
function phantomPro(data) {
    var pt = document.querySelectorAll('.phantom');
    for (var i = 0; i < pt.length; i++) {
        pt[i].textContent = data.products[2].productname;
    }
    var spec = document.querySelectorAll('.pspec');
    for (var i = 0; i < spec.length; i++) {
        var spn1 = document.createElement('span');
        var spn2 = document.createElement('span');
        var spn3 = document.createElement('span');
        spn1.textContent = data.products[2].function[0];
        spn2.textContent = data.products[2].function[1];
        spn3.textContent = data.products[2].function[2];
        spec[i].appendChild(spn1);
        spec[i].appendChild(spn2);
        spec[i].appendChild(spn3);
    }
    var des = document.querySelectorAll('.pdesc');
    for (var i = 0; i < des.length; i++) {
        des[i].textContent = data.products[2].description + '.';
    }
    var price = document.querySelectorAll('.pprice');
    for (var i = 0; i < price.length; i++) {
        price[i].textContent = 'USD $' + data.products[2].price;
    }
}

