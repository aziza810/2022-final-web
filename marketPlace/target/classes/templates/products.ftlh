<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>market place</title>
</head>
<body>
<h1>BUYSELL | <a href="/login">Sing in</a></h1><hr>
<hr>
<h4>Market place from KG</h4>

    <form action="/" method="get">
        Search by title of product: <input type="text" name="title"><br>
        <input type="submit" value="search">
    </form>
    
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} KGS. | <a href="/product/${product.id}">Подробнее...</a></p>
        </div>
        <#else>
        <h3>There is no products</h3>
    </#list>

    <hr>
    <h3>add new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name of product: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="text" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        Author: <input type="text" name="author"/><br><br>
        First image: <input type="file" name="file1"/><br><br>
        Second image: <input type="file" name="file2"/><br><br>
        Third image: <input type="file" name="file3"/><br><br>
        <input type="submit" value="add product"/>
    </form>

</body>
</html>