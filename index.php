<?php require_once "php/db.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>English</title>
    <link rel="stylesheet" href="style/main.css">
</head>
<body>
    <header>
        <img src="img/coffee1.png" class="coffee1">
        <div class="yellow_gradient"></div>
        <div class="h_wide">
            <div class="h_content">
                <div class="h_subcontent">
                    <img src="img/logo1.png" class="logo">
                    <p class="p1">
                        Вкладывайте незначительные деньги каждый день в копилку своих знаний.
                    </p>
                    <p class="p2">
                        Следующий курс для вас будет стоить всего <b>178 рублей в день</b>
                    </p>
                </div>
                <div class="date">
                    <div class="date_d">01</div>
                    <div>
                        <div class="date_m">Ноября</div><br>
                        <div class="date_c">Ближайший старт</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date_d">21</div>
                    <div>
                        <div class="date_m">Октября</div><br>
                        <div class="date_c">Конец акции</div>
                    </div>
                </div>
                <br>
                <a class="h_button1" href="#prices">Узнать подробнее</a>
                <a class="h_button2" href="#form">Бесплатная консультация</a>
            </div>
        </div>
        <div class="right-img">
            <img src="img/coffee2.png" class="coffee2">
            <img src="img/guy.png" class="guy">
        </div>
    </header>
    <div class="prices" id="prices">
        <h1>Выберите свой вариант обучения </h1>
        <div class="price_list">
            <?php require_once "php/prices.php";?>
        </div>
    </div>
    <img src="img/gift_banner.png" class="gift">
    <div class="form" id="form">
        <?php require "php/form.php"; ?>
        <p class="form_success" style=<?= $form_success ? '"display: block;"' : '"display: none;"'?>>Ваши данные успешно отправлены</p>
        <div style=<?= $form_success ? '"display: none;"' : '"display: block;"' ?>>
            <p class="form_header">Еще думаете?</p>
            <p class="form_comment">
                Записывайтесь на бесплатный урок и попробуйте сами, это поможет принять решение
            </p>
            <p class="form_error" style=<?= $form_error ? '"display: block;"' : '"display: none;"'?>>Ошибка</p>
            <form method="get">
                <input type="text" placeholder="Введите ваше имя" name="name">
                <input type="text" placeholder="Введите ваш телефон" name="phone">
                <input type="text" placeholder="Введите ваш email" name="email">
                <input type="submit" value="ЗАПИСАТЬСЯ">
            </form>
            <p class="form_conditions">
                Нажимая на кнопку, вы даете согласие на обработку персональных данных и соглашаетесь с политикой конфиденциальности
            </p>
        </div>
    </div>
    <footer>
        <div class="logo_f">
            <img src="img/logo2.png" class="f_logo">
        </div>
        <div>
            <span>2015 - 2021 © English. Все права защищены.</span>
            <span>Политика конфиденциальности</span>
            <span style="display: block;">Соглашение об обработке персональных данных</span>
            <p>
            ООО "Инглиш", юридический адрес: 000000, Санкт-Петербург, ул. Улица, д. 0/00 лит. 0, пом. 0<br>
            ОГРН: 000000000000 | ИНН: 000000000 | КПП: 000000000
            </p>
        </div>
        <div>
            <a href="">
                <img src="img/vk_red copy.svg">
            </a>
            <a href="">
                <img src="img/Vector.svg">
            </a>
        </div>
    </footer>
</body>
</html>