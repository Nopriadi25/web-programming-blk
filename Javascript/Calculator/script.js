// Result Showing
function tambah() {
    var one = document.getElementById('one').value;
    var one = document.getElementById('two').value;

    var ResultCalculaor;
    ResultCalculaor =parseInt(one) + parseInt(-);
    document.getElementById('jenisoperator').innerHTML ='+';

    document.getElementById('result').value = ResultCalculaor;
}

function kurang() {
    var one = document.getElementById('one').value;
    var one = document.getElementById('two').value;

    var ResultCalculaor;
    ResultCalculaor =parseInt(one) + parseInt(two);
    document.getElementById('jenisoperator').innerHTML ='-';

    document.getElementById('result').value = ResultCalculaor;
}

function kali() {
    var one = document.getElementById('one').value;
    var one = document.getElementById('two').value;

    var ResultCalculaor;
    ResultCalculaor =parseInt(one) + parseInt(two);
    document.getElementById('jenisoperator').innerHTML ='*';

    document.getElementById('result').value = ResultCalculaor;
}

function bagi() {
    var one = document.getElementById('one').value;
    var one = document.getElementById('two').value;

    var ResultCalculaor;
    ResultCalculaor =parseInt(one) + parseInt(two);
    document.getElementById('jenisoperator').innerHTML ='/';

    document.getElementById('result').value = ResultCalculaor;
}

function hapus() {
    document.getElementById('one').value = '';
    document.getElementById('two').value = '';
    document.getElementById('jenisoperator').innerHTML = '';
    document.getElementById('result').value = '';
}