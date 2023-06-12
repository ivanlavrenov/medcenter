<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="web.Comments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="../dist/slider/itc-slider.css"/>
        <link rel="stylesheet" href="../dist/css/site.css"/>
        <title>Отзывы</title>
</head>
 <body>
        <form id="form1" runat="server"> 
            <header>
                <nav class="navbar">
                    <div class="container"> 
                        <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
                            <ul class="navbar-nav flex-grow-1">
                                <li class="nav-item">
                                    <a class="logo-item" href="/">
                                        <img class="logo" src="../dist/img/logo.jpg" />
                                        <div class="name">
                                            <label class="subtitle">Многопрофильный<br/> медцентр</label>
                                            <span class="title">Клиника</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="link" href="tel:+7 (000) 000-00-00">+7 (000) 000-00-99</a>
                                </li>
                                <li class="nav-item link">
                                    г. Кострома, ул. Советская, дом 27
                                </li>
                                <li class="nav-item">
                                   <a class="link" href="/Appointments.aspx">Мои записи</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="container"> 
                <div class="wrapper">        
                    <div class="block-title">
                        <label class="block-title-text">Все отзывы</label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>
                        </div>
                    </div>
                        <asp:Literal id="comments" runat="server" />
                    <div class="block-title">
                        <label class="block-title-text">Оставить отзыв</label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>
                        </div>
                    </div>
                  <div class="comment_form">
                        <div class="input_wrapper">
                            <label>Имя</label>
                            <asp:TextBox CssClass="input" ID="commentName" runat="server" />
                        </div>
                        <div class="input_wrapper">
                            <label>Отзыв</label>
                            <asp:TextBox CssClass="input" ID="commentText" runat="server" />
                        </div>
                        <asp:Button ID="successButton" OnClick="CreateComment" runat="server" text="Оставить отзыв" class="button"/>
                   </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container">
                    <div class="navbar-collaps justify-content-between">
                        <ul class="navbar-nav flex-grow-1">
                            <li class="nav-item">
                                <a class="logo-item" href="/">
                                    <img class="logo" src="../dist/img/logo.jpg" />
                                    <div class="name">
                                        <label class="subtitle">Многопрофильный<br /> медцентр</label>
                                        <span class="title">Клиника</span>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item contacts">
                                <label class="nav_header">Контакты</label>
                                <a class="link" href="tel:+7 (000) 000-00-00">+7 (000) 000-00-99</a>
                                <p class="link"> Кострома, ул. Советская, дом 27</p>
                            </li>
                            <li class="footer_list">
                                <a href="" class="footer_list_item">Прейскурант</a>
                                <a href="" class="footer_list_item">Контакты</a>
                                <a href="" class="footer_list_item">Пациенту</a>
                                <a href="" class="footer_list_item">Результаты анализов</a>
                                <a href="" class="footer_list_item">Специалисты</a>
                                <a href="" class="footer_list_item">Услуги</a>
                                <a href="" class="footer_list_item">Отзывы</a>
                            </li>
                            <li class="nav-item contacts">
                                <label class="nav_header">Мы в соцсетях</label>
                                <div class="social">
                                    <a href="" class="vk">
                                        <img class="" src="../dist/img/vk.png" />
                                    </a>
                                    <a href="" class="tg" >
                                        <img class="" src="../dist/img/tg.png" />
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </footer>
        </form>
    </body>
</html>
