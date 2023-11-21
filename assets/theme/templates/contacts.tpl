{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black _full-black'}
{/block}

{block 'main'}
    <main class="main _inner">        
        <section class="section _black _pt0 _pb0">
            {* Хлебные крошки *}
            {include 'file:chunks/template/breadcrumbs.tpl' $breadcrumbs_classnames='_black'}

            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="contacts__header" data-aos="fade-up">
                    <div class="tabs__btns contacts__tabs scroll _hidden">
                        <button class="btn btn-reset tabs__btn _red _active" type="button" data-tab="1">Самара</button>
                        {if 'show_moscow' | config == 1}
                            <button class="btn btn-reset tabs__btn _red" type="button" data-tab="2">Москва</button>
                        {/if}
                    </div>
                    <button class="contacts__order btn btn-reset _red" type="button" data-modal="#modal-order">Обсудить проект
                        <svg width="31" height="8">
                            <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                        </svg>
                    </button>
                </div>

                <div class="tabs__content _active" data-tab-content="1">
                    <div class="contacts__grid">
                        <div class="contacts__box" data-aos="fade-up">
                            <address class="contacts__item">
                                <p class="contacts__item-title text-small">Телефон</p>
                                <a class="contacts__item-link contacts__item-value" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone' | config}</a>
                            </address>

                            <address class="contacts__item">
                                <p class="contacts__item-title text-small">Почта</p>
                                <p class="contacts__item-value">
                                    <a class="contacts__item-link" href="mailto:{'email' | config}">{'email' | config}</a> — предложения по партнёрству
                                </p>
                                <p class="contacts__item-value">
                                    <a class="contacts__item-link" href="mailto:{'email_sale' | config}">{'email_sale' | config}</a> — отдел продаж
                                </p>
                            </address>

                            <address class="contacts__item">
                                <p class="contacts__item-title text-small">Адрес</p>
                                <p class="contacts__item-value">{'address' | config}</p>
                            </address>

                            <address class="contacts__item">
                                <p class="contacts__item-title text-small">Соц. сети</p>
                                <a class="contacts__item-value contacts__item-link" href="{'vk' | config}" target="_blank" rel="nofollow">VK</a>
                            </address>
                        </div>

                        <div class="contacts__map" id="samara-map"></div>
                    </div>
                </div>

                {if 'show_moscow' | config == 1}
                    <div class="tabs__content" data-tab-content="2">
                        <div class="contacts__grid">
                            <div class="contacts__box" data-aos="fade-up">
                                <address class="contacts__item">
                                    <p class="contacts__item-title text-small">Телефон</p>
                                    <a class="contacts__item-link contacts__item-value"
                                        href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone'
                                        | config}</a>
                                </address>
                    
                                <address class="contacts__item">
                                    <p class="contacts__item-title text-small">Почта</p>
                                    <p class="contacts__item-value">
                                        <a class="contacts__item-link" href="mailto:{'email' | config}">{'email' | config}</a> — предложения
                                        по партнёрству
                                    </p>
                                    <p class="contacts__item-value">
                                        <a class="contacts__item-link" href="mailto:{'email_sale' | config}">{'email_sale' | config}</a> —
                                        отдел продаж
                                    </p>
                                </address>
                    
                                <address class="contacts__item">
                                    <p class="contacts__item-title text-small">Адрес</p>
                                    <p class="contacts__item-value">{'address_moscow' | config}</p>
                                </address>
                    
                                <address class="contacts__item">
                                    <p class="contacts__item-title text-small">Соц. сети</p>
                                    <a class="contacts__item-value contacts__item-link" href="{'vk' | config}" target="_blank"
                                        rel="nofollow">VK</a>
                                </address>
                            </div>
                            <div class="contacts__map" id="moscow-map"></div>
                        </div>
                    </div>
                {/if}
                
                <div class="contacts__grid contacts__requisites" data-aos="fade-up">
                    <div class="contacts__box">
                        <h2 class="section__title contacts__box-title">Реквизиты компании</h2>
                        <div class="contacts__item-value text">
                            {'requisites' | config}
                        </div>
                    </div>
                    <div class="contacts__box" data-aos="fade-up">
                        <h2 class="section__title contacts__box-title">Реквизиты банка</h2>
                        <div class="contacts__item-value text">
                            {'bank' | config}
                        </div>
                    </div>
                </div><img class="contacts__circle" src="assets/theme/img/contacts-circle.svg" alt="" width="702" height="1062">
            </div>
        </section>
    </main>
{/block}

{block 'footer'}{/block}

{block 'scripts'}
    <script src="https://api-maps.yandex.ru/2.1/?apikey=ваш API-ключ&amp;lang=ru_RU" type="text/javascript"></script>
{/block}