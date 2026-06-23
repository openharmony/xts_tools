const xhr = new XMLHttpRequest();
xhr.onload = () => {
    console.log(xhr.responseXML.title);
}
xhr.open("GET", "index.html");
xhr.responseType = "document";
xhr.send();