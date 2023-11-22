<div class="price_block">
    <p class="p_title"><?= $title ?></p>
    <div class="p_prices">
        <p class="p_price"><?= spaces($price) ?> ₽</p>
        <s class="p_oldprice"><span><?= spaces($oldprice) ?> ₽</span></s>
        <p class="p_percent">-<?= floor($price / $oldprice * 100) ?>%</p>
        
    </div>
    <div class="p_list">
        <img src="img/check.png"> <?= $months ?> месяцев обучения<br>
        <img src="img/check.png"> Грамматическая выжимка<br>
        <img src="img/check.png"> Разговорный тренажёр<br>
        <img src="img/check.png"> Слова с ассоциациями<br>
        <img src="img/check.png"> Регулярные мини-задания<br>
        <img src="img/check.png"> Персональный куратор<br>
        <img src="img/check.png"> Сертификат об обучении<br>
        <img src="img/check.png"> Best Teachers<br>
        <img src="img/check.png"> <b>Звонки от Second Teacher</b>
    </div>
    <p class="p_pre">Предоплата</p>
    <p class="p_prepay"><?= $prepay ?> ₽</p>
    <div class="p_button" ><a href="<?= $link_ru ?>">ВНЕСТИ ПРЕДОПЛАТУ<br>ИЗ РФ</a></div>
    <div class="p_button"><a href="<?= $link_en ?>">ВНЕСТИ ПРЕДОПЛАТУ<br>ИЗ-ЗА ГРАНИЦЫ</a></div>
</div>