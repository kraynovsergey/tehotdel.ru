<form class="form modal__form" action="{$_modx->resource.id | url}" method="post">
    <input type="text" style="position: absolute; left: -9999px; top: -99999px;" name="info" value="">
    <input type="hidden" name="nospam:blank" value="">
    <input type="hidden" name="order" value="1">
    <input type="hidden" name="page" value="{$_modx->resource.id | url : [ 'scheme' => 'full' ]}">
    <input type="hidden" name="pageName" value="{$_modx->resource.pagetitle | escape}">
    <input type="hidden" name="target" data-form-field-target>

    <div class="form__fields">
        <fieldset class="form__fieldset">
            <label class="form__label text-small text-gray" for="order-name">Имя</label>
            <input class="form__input" type="text" name="name" placeholder="Ваше имя" id="order-name" data-input>
        </fieldset>

        <fieldset class="form__fieldset">
            <label class="form__label text-small text-gray" for="order-phone">Телефон</label>
            <input class="form__input" type="tel" name="phone" placeholder="+7 (ХХХ) ХХХ-ХХ-ХХ" id="order-phone"
                data-tel data-input>
        </fieldset>

        <fieldset class="form__fieldset _full">
            <label class="form__label text-small text-gray" for="order-message">Проект</label>
            <input class="form__input" type="text" name="message" placeholder="Опишите ваш проект (необязательно)"
                id="order-message" data-input>
        </fieldset>
    </div>

    <button class="form__submit btn btn-reset _red" type="submit">Отправить заявку
        <svg width="31" height="8">
            <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
        </svg>
    </button>

    <div class="form__checkbox">
        <input class="form__checkbox-input" type="checkbox" name="policy" id="order-policy" data-policy required>
        <label class="form__checkbox-label" for="order-policy">
            <span class="form__checkbox-check"></span>
            <span>Оставляя заявку, вы даёте согласие на <a href="{11 | url}" target="_blank">обработку ваших персональных данных</a>, а также подтверждаете, что вам исполнилось 18 лет</span>
        </label>
    </div>
</form>