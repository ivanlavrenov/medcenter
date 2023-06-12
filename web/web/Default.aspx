<%@ Page Language="C#" Title="Главная страница" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="../dist/slider/itc-slider.css"/>
        <link rel="stylesheet" href="../dist/css/site.css"/>
        <title>Главная страница</title>
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
                                <li  class="nav-item link">
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
           <asp:Panel style="display: none" ID="modal" runat="server">
               <div class="background"></div>
               <div class="modal_form">
                   <h3 class="modal_title">Запись на прием</h3>
                   <div class="input_wrapper">
                        <label>Имя</label>
                        <asp:TextBox CssClass="input" ID="modalName" runat="server" />
                    </div>
                    <div class="input_wrapper">
                        <label>Номер телефона</label>
                        <asp:TextBox CssClass="input" ID="modalPhone" runat="server" />
                    </div>
                   <div class="input_wrapper">
                        <label>Дата</label>
                        <asp:TextBox CssClass="input" ID="modalDate" runat="server" />
                    </div>
                   <div class="input_wrapper">
                        <label>Специалист</label>
                        <asp:TextBox CssClass="input" ID="modalDoctor" runat="server" />
                    </div>
                   <div class="input_wrapper">
                        <label>Услуга</label>
                        <asp:TextBox CssClass="input" ID="modalService" runat="server" />
                    </div>
                   <div class="button_block">
                        <asp:Button ID="successButton" OnClick="ModalFormClick" runat="server" text="Готово" class="button"/>
                        <asp:Button ID="Button2" OnClick="CloseModal" runat="server" text="Отмена" class="button-border"/>
                    </div>
               </div>
           </asp:Panel>
            <div class="container"> 
                <div class="wrapper">
                    <div class="itc-slider slider" data-slider="itc-slider">
                        <div class="itc-slider-wrapper">
                            <div class="itc-slider-items">
                                <div class="itc-slider-item" style="background-image: url('../dist/img/87c4f01a6cf3c2b41aa8aa484b2f47b3.png')">
                                    <div class="text">
                                        <p class="text-title">Лазерное и хирургическое лечение глаза</p>
                                        <label>
                                            Команда лучших специалистов с многолетней практикой<br /> и доказанным опытом. <br />
                                            Они помогают сохранить здоровье <br /> и находят подход и к взрослым, и к детям
                                        </label>
                                        <button class="button">Подробнее</button>
                                    </div>
                                </div>
                                <div class="itc-slider-item" style="background-image: url('../dist/img/2.jpg')">
                                    <div class="text">
                                        <p class="text-title">
                                            ДОСТУПНАЯ МЕДИЦИНА
                                        </p>
                                        <label>
                                            27 клиник<br />
                                            БЫСТРАЯ ЗАПИСЬ<br />
                                            по телефону или в приложении<br />
                                            ДО 25% СТОИМОСТИ УСЛУГ<br />
                                            возвращаем бонусами по программе лояльности
                                        </label>
                                        <button class="button">Подробнее</button>
                                    </div>
                                </div>
                                <div class="itc-slider-item" style="background-image: url('../dist/img/1.jpg')">
                                    <div  class="text ">
                                        <p class="text-title">
                                            КОМПЬЮТЕРНАЯ ТОМОГРАФИЯ<br />
                                        </p>
                                        <label>
                                            Точная и быстрая диагностика с минимальной лучевой нагрузкой<br />
                                            помогает выявить заболевания на самых ранних стадиях
                                        </label>
                                        <button class="button">Подробнее</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="itc-slider-btn itc-slider-btn-prev"></button>
                        <button class="itc-slider-btn itc-slider-btn-next"></button>
                    </div>
                    <div class="block-title">
                        <label class="block-title-text">Услуги</label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>
           
                        </div>
                    </div>
                    <div class="services">
                        <div class="leftside">
                            <div class="text card">
                                <p class="text-title">
                                    Лабораторные исследования
                                </p>
                                <label>
                                    Лабораторная диагностика даёт до 70% информации о состоянии здоровья человека. Качественно проведенный лабораторный анализ - залог точно поставленного диагноза и своевременно начатого лечения!
                                </label>
                                <button class="button-border ">Подробнее</button>
                            </div>
                            <div class="text card">
                                <p class="text-title">
                                    Офтальмология/хирургическое и лазерное лечение глаз
                                </p>
                                <label>
                                    Успех лечения пациентов с заболеваниями глаз складывается из комплексной диагностики, квалификации специалистов, применения современных и эффективных технологий.
                                </label>
                                <button class="button-border ">Подробнее</button>
                            </div>
                            <div class="text card">
                                <p class="text-title">
                                    Косметология
                                </p>
                                <label>
                                    Медицинская косметология занимается восстановлением и сохранение здоровья кожи, устранением эстетических дефектов, профилактикой и коррекцией старения лица и тела.
                                </label>
                                <button class="button-border ">Подробнее</button>
                            </div>
                            <div class="text card">
                                <p class="text-title">
                                    Аппаратное ультразвуковое исследование
                                </p>
                                <label>
                                    Эффективный современный метод диагностики различных заболеваний. Поставить правильный диагноз, назначить оптимальное лечение - всё это позволяет сделать ультразвуковое исследование.  
                                </label>
                                <button class="button-border ">Подробнее</button>
                            </div>
                        </div>
                        <div class="rightside card">
                            <h3>Другие услуги</h3>
                            <ul>
                                <li>Педиатрия</li>
                                <li>Функциональная диагностика</li>
                                <li>Эндоскопия</li>
                                <li>Лечение в стационаре</li>
                                <li>Ультразвуковая диагностика</li>
                                <li>Компьютерная томография</li>
                                <li>Терапия</li>
                                <li>Хирургия</li>
                                <li>Лечебная косметология</li>
                            </ul>
                            <button style="margin: 0 24px 8px 24px" class="button-border">Смотреть все услуги</button>
                            <asp:Button ID="modal_button" OnClick="OpenModal" runat="server" text="Записаться на прием" class="button"/>
                        </div>
                    </div>
                            <div class="block-title">
                        <label class="block-title-text">
                            Специалисты
                        </label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>
                        </div>
                    </div>
                    <div class="workers">
                        <div style="background-image: url('../dist/img/cox.jpg')" class="workers_card">
                            <div class="workers_card_text">
                                <p>Петр Алексеевич Коробков</p>
                                <label>Врач терапевт</label>
                            </div>
                        </div>
                        <div style="background-image: url('../dist/img/jd.jpg')" class="workers_card">
                            <div class="workers_card_text">
                                <p>Евгений Васильевич Дорофеев</p>
                                <label>Врач офтальмолог</label>
                            </div>
                        </div>
                        <div style="background-image: url('../dist/img/elliot.jpg')" class="workers_card">
                            <div class="workers_card_text">
                                <p>Елена Рудольфовна Ридбергер</p>
                                <label>Врач ультразвуковой диагностики</label>
                            </div>
                        </div>
                        <div style="background-image: url('../dist/img/kelso.jpg')" class="workers_card">
                            <div class="workers_card_text">
                                <p>Роман Александрович Колесников</p>
                                <label>Главный врач</label>
                            </div>
                        </div>
                    </div>
                    <button class="button">Все специалисты</button>
                    <div class="block-title">
                        <label class="block-title-text">Отзывы пациентов</label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>

                        </div>
                    </div>
                    <div class="itc-slider itc-slider-2 comments" data-slider="itc-slider" data-loop="true">
                        <div class="itc-slider-wrapper">
                            <div class="itc-slider-items">
                                <div class="itc-slider-item">
                                    <div class="comment">
                                        <img class="user_img" src="../dist/img/f.png" />
                                        <p class="user_name">Наталья</p>
                                        <label class="date">8 апреля 2020</label>
                                        <p class="user_text">Первый раз попала в эту клинику совершенно случайно - посоветовали обратиться туда на УЗИ. Клиника небольшая, но все оперативно, оборудование и сервис на уровне, специалисты хорошие.</p>
                                    </div>
                                </div>
                                <div class="itc-slider-item">
                                    <div class="comment">
                                        <img class="user_img" src="../dist/img/m.png" />
                                        <p class="user_name">Игорь</p>
                                        <label class="date">20 октября 2021</label>
                                        <p class="user_text">Всё организованно, быстро и качественно принимают пациентов. Хочу выразить огромную благодарность всему персоналу клиники за отзывчивость, неравнодушие к больным.</p>
                                    </div>
                                </div>
                                <div class="itc-slider-item">
                                    <div class="comment">
                                        <img class="user_img" src="../dist/img/f.png" />
                                        <p class="user_name">Елена</p>
                                        <label class="date">1 апреля 2023</label>
                                        <p class="user_text">
                                            Хочу поблагодарить медицинский персонал процедурного кабинета, а также администраторов клиники.
                                            Общее впечатление от клиники положительные, чисто и оперативно, цены на капельницы и инъекции адекватные.
                                            Персонал вежлив и предусмотрителен.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="itc-slider-btn itc-slider-btn-prev"></button>
                        <button class="itc-slider-btn itc-slider-btn-next"></button>
                    </div>
                    <a class="link_button button comments_button"" href="/Comments.aspx"><label >Посмотреть все</label></a>
                    <div class="block-title">
                        <label class="block-title-text">
                            «Клиника» в людях
                        </label>
                        <div class="line">
                            <div class="line_side"></div>
                            <div class="line_cross">
                                <div class="line_cross-vertical"></div>
                                <div class="line_cross-horizontal"></div>
                            </div>
                            <div class="line_side"></div>
                        </div>
                    </div>
                    <div class="description">
                        <p class="description_text">
                            Команда медицинского центра «Клиника» – люди, которые выбрали свою профессию по призванию и любящие своих пациентов. Наши врачи используют современные эффективные методы лечения и профилактики заболеваний. Мы растём, развиваемся и стремимся к тому, чтобы точно диагностировать, надёжно профилактировать и эффективно лечить. Работаем на уровне лучших мировых стандартов, внедряя и развивая передовые методы лечения.
                        </p>
                        <div class="info">
                            <div class="info_card">
                                <h4 class="info_card_title">5</h4>
                                <p class="info_card_text">Филиалов по Костромской области</p>
                            </div>
                            <div class="info_card">
                                <h4 class="info_card_title">32</h4>
                                <p class="info_card_text">Специалиста в команде</p>
                            </div>
                            <div class="info_card">
                                <h4 class="info_card_title">87%</h4>
                                <p class="info_card_text">Пациентов обращаются повторно</p>
                            </div>
                            <div class="info_card">
                                <h4 class="info_card_title">14 лет</h4>
                                <p class="info_card_text">
                                    Успешной работы центра
                                </p>
                            </div>
                        </div>
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


<script src="../dist/slider/itc-slider.js"></script>
<script src="../dist/js/site.js" asp-append-version="true"></script>