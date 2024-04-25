<!doctype html>
<html>
<head>
    <title>Welcome to Grails</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet src="styles.css"/>
</head>
<body>

    <form  id='myForm' action="${ createLink(controller: "form", action: "sendFormData") }" method="post">
        <g:if test="${ flash.sentForm }">
           <div class="sucess-submit" id="msg-success">
                <p>Formulário enviado com sucesso</p>
            </div>
        </g:if>
        <label>
            <span>Nome</span>
            <input type="text" id="input" name="name" placeholder="Informe seu nome" required >
        </label>
        <label>
            <span>CPF</span>
            <input type="text" name="cpf"  placeholder="Informe seu CPF"  required>
        </label>
        <label>
            <span>E-mail</span>
            <input type="email" name="email"  placeholder="Informe seu email" required>
        </label>

        <label>
            <span>Telefone</span>
            <input type="text" name="phone"  placeholder="Informe seu telefone" required>
        </label>
        <label>
            <span>CEP</span>
            <input type="text" id="cep" name="cep"  placeholder="Informe seu CEP" minlength="8" maxlength="8" required>
        </label>

        <label>
            <span>Logradouro</span>
            <input type="text" name="place" id="place"   placeholder="Informe seu logradouro"  required>
        </label>

        <label>
            <span>Bairro</span>
            <input type="text"  name="neighborhood" id="neighborhood"  placeholder="Informe seu bairro"  required>
        </label>

        <label>
            <span>Cidade</span>
            <input type="text"  name="city"  id="city"  placeholder="Informe sua cidade"  required>
        </label>

        <label>
            <span>Estado</span>
            <input type="text"  name="state" id="state" placeholder="Informe seu estado" maxlength=2 minlength=2 required>
        </label>

        <button type="submit"> Enviar </button>
        <%-- <input type="submit" > --%>
 
        
    </form>

    <asset:javascript src="scripts.js"/>

</body>
</html>
