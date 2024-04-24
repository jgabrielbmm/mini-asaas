<!doctype html>
<html>
<head>
    <%-- <meta name="layout" content="main"/> --%>
    <title>Grails Form</title>
    <link rel="stylesheet" href="${resource(dir: 'grails-app/css', file: 'styles.css')}" type="text/css">
</head>
<body>
    <h1> Hello World </h2>
    <form action="">
    <label>
        <span>Nome</span>
        <input type="text" name="name">
    </label>

    <label>
        <span>CPF</span>
        <input type="number" name="cpf">
    </label>

    <label>
        <span>email</span>
        <input type="email" name="email">
    </label>

    <label>
        <span>Telefone</span>
        <input type="number" name="phone">
    </label>

    <label>
        <span>CEP</span>
        <input type="number" name="cep">
    </label>
</form>
</body>
</html>
