<%--
     Document   : index
     Created on : 01/11/2017, 23:35:32
     Author     : Gabriel Silva
--%>
<%
    String nomeUsuario = (String) request.getSession().getAttribute("nome");
    if (nomeUsuario != null) {
        response.sendRedirect("dashboard.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <!-- Import Materialize CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <!-- Import Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Import Style CSS -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>


    <body id="body-login">
        <div class="container">
            <div class="row">
                <div class="col s6">
                    <h2 id="titulo1">Compartilhe códigos na comunidade IF</h2>
                    <h4 id="titulo2">Plataforma desenvolvida para compartilhar códigos de todos as discilpinas</h4>
                </div>
                <div class="col s1"></div>
                <div class="col s5">
                    <center>

                        <!-- FORM LOGIN -->
                        <form name="form-login" class="col s11 z-depth-3 grey lighten-4 div-form" id="form-login" action="Login" method="POST">
                            <div class="row">
                                <h3 class="indigo-text">IFCommunity</h3>
                            </div>

                            <div class="row">
                                <div class='input-field col s12'>
                                    <input class='validate' type='text' name='login' id='login' />
                                    <label for='login'>Login ou email</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class='input-field col s12'>
                                    <input class='validate' type='password' name='senha' id='senha' />
                                    <label for='senha'>Senha</label>
                                </div>

                                <label class="esqueci-minha-senha">
                                    <a class='red-text' href='#!'><b>Esqueci minha senha</b></a>
                                </label>
                            </div>

                            <div class="row">
                                <button id="btn-login" type='submit' name='btn-login' class='col s12 btn btn-large waves-effect indigo'>Login</button>
                            </div>
                            <a href="" id="btn-criar-conta">Criar uma conta</a>
                        </form>

                        <!-- FORM CADASTRAR -->
                        <form name="form-cadastrar" class="col s11 z-depth-3 grey lighten-4 div-form" id="form-cadastrar" action="Cadastrar" method="POST">
                            <div id="form-cadastro">
                                <div class="row row-titulo">
                                    <h3 class="indigo-text">Cadastro</h3>
                                </div>

                                <div class="row">
                                    <div class='input-field col s12'>
                                        <input class='validate' type='text' name='nome' id='nome' maxlength="60" required/>
                                        <label id="nome-cadastro" for='nome'>Nome</label>
                                        <span id="erro-nome" class="erro-span"></span>
                                    </div>

                                    <div class='input-field col s12'>
                                        <input class='validate' type='text' name='telefone' id='telefone' maxlength="18" required/>
                                        <label id="telefone-cadastro" for='telefone'>Telefone</label>
                                        <span id="erro-telefone" class="erro-span"></span>

                                    </div>
                                    <div class='input-field col s9'>
                                        <input class='validate' type='text' name='matricula' id='matricula' maxlength="15" required/>
                                        <label for='matricula'>Matrícula</label>
                                    </div>
                                    <div class='input-field col s3'>
                                        <input class='validate' type='number' name='periodo' id='periodo'
                                               maxlength="1"   max='5' value='0' required/>
                                        <label for='periodo'>Período</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <button id="btn-cadastrar-proximo" type='button' name='btn-cadastrar-proximo' class='col s12 btn btn-large waves-effect indigo'>Próximo</button>
                                </div>
                                <a href="" id="btn-voltar">Voltar</a>
                            </div>

                            <!-- FORM CADASTRAR 2a TELA -->
                            <div id="form-cadastro-2">
                                <div class="row row-titulo">
                                    <h3 class="indigo-text">Finalizar cadastro</h3>
                                </div>

                                <div class="row">
                                    <div class='input-field col s12'>
                                        <input class='validate' type='text' name='login-cadastro' id='login-cadastro' maxlength="20" required/>
                                        <label for='login-cadastro'>Usuário</label>
                                    </div>
                                    <div class='input-field col s12'>
                                        <input class='validate' type='password' name='senha' id='senha' maxlength="25" required/>
                                        <label for='senha'>Senha</label>
                                    </div>
                                    <div class='input-field col s12'>
                                        <input class='validate' type='email' name='email' id='email' maxlength="60" required/>
                                        <label for='email'>Email</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <button id="btn-cadastrar" type='submit' name='btn-cadastrar' class='col s12 btn btn-large waves-effect indigo'>Cadastrar</button>
                                </div>
                                <a href="" id="btn-voltar-tela-2">Voltar</a>
                            </div>
                        </form>
                    </center>
                </div>
            </div>
        </div>

        <!-- Import jQuery -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <!-- Import Materialize JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <!-- Import Login JS -->
        <script src="js/login.js"></script>


    </body>

</html>
