<%--
  Created by IntelliJ IDEA.
  User: Gustavo Vinicius
  Date: 06/02/2019
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="jstl-core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jstl-formatting" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Alteracao do contato</title>
    <style>
        input {
            display: block;
        }
    </style>
</head>
<body>
<jstl-core:import url="cabecalho.jsp"/>
<form action="sistema?logica=AlteraContato" method="post">
    <input type="hidden" name="id" value="${contato.id}">
    Nome:<input type="text" name="nome" value="${contato.nome}"/>
    Endereco:<input type="text" name="endereco" value="${contato.endereco}"/>
    Email:<input type="text" name="email" value="${contato.email}"/>
    Data nascimetno<input type="text" name="dataNascimento"
                          value="<jstl-formatting:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>">
    <input type="submit" value="Alterar">
</form>
<jstl-core:import url="rodape.jsp"/>
</body>
</html>
