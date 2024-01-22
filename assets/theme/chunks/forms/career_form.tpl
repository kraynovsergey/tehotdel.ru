<form class="form" action="{$_modx->resource.id | url}" method="post" enctype="multipart/form-data">
    <input type="text" style="position: absolute; left: -9999px; top: -99999px;" name="info" value="">
    <input type="hidden" name="nospam:blank" value="">
    <input type="hidden" name="career" value="1">
    <input type="hidden" name="page" value="{$_modx->resource.id | url : [ 'scheme' => 'full' ]}">
    <input type="hidden" name="pageName" value="{$_modx->resource.pagetitle | escape}">
    <input type="hidden" name="target" data-form-field-target>

    {include 'file:chunks/forms/form_utm.tpl'}

    <div class="form__fields _cols3">
        <fieldset class="form__fieldset">
            <label class="form__label text-small text-gray" for="career-name">Имя</label>
            <input class="form__input" type="text" name="name" placeholder="Ваше имя" id="career-name" data-input>
        </fieldset>

        <fieldset class="form__fieldset">
            <label class="form__label text-small text-gray" for="career-phone">Телефон</label>
            <input class="form__input" type="tel" name="phone" placeholder="+7 (ХХХ) ХХХ-ХХ-ХХ" id="career-phone"
                data-tel data-input>
        </fieldset>

        <fieldset class="form__fieldset">
            <label class="form__label text-small text-gray" for="career-email">Почта</label>
            <input class="form__input" type="email" name="email" placeholder="info@example.ru" id="career-email"
                data-input>
        </fieldset>

        <fieldset class="form__fieldset _full">
            <label class="form__label text-small text-gray" for="career-message">Сопроводительное письмо</label>
            <input class="form__input" type="text" name="message" placeholder="Расскажите о вашем профессиональном пути" id="career-message" data-input>
        </fieldset>
    </div>

    <div class="form__btns">
        <div class="form__attachment">
            <input class="form__attachment-input" type="file" name="attachment" id="career-attachment" data-attachment>
            <label class="form__attachment-label btn btn-reset _white-bordered" for="career-attachment">
                <svg width="24" height="24">
                    <use xlink:href="assets/theme/img/icons/icons.svg#attachment"> </use>
                </svg><span>Прикрепить файл</span>
            </label>
        </div>

        <button class="form__submit btn btn-reset _red" type="submit">Отправить заявку
            <svg width="31" height="8">
                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
            </svg>
        </button>
    </div>

    <div class="form__checkbox">
        <input class="form__checkbox-input" type="checkbox" name="policy" id="career-policy" data-policy required>
        <label class="form__checkbox-label" for="career-policy">
            <span class="form__checkbox-check"></span>
            <span>Оставляя заявку, вы даёте согласие на <a href="{11 | url}" target="_blank">обработку ваших персональных данных</a>, а также подтверждаете, что вам исполнилось 18 лет</span>
        </label>
    </div>
</form>