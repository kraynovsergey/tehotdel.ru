{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        <section class="section _pt0 _pb0 _black _radius _radius-bottom">
            {* Хлебные крошки *}
            {include 'file:chunks/template/breadcrumbs.tpl' $breadcrumbs_classnames='_pb0'}

            {* Интро *}
            <section class="section service-intro _pt0 _no-ovh">
                <div class="container service-intro__container">
                    <div class="service-intro__content" data-aos="fade-up">
                        <h1 class="service-intro__title">{$_modx->resource.pagetitle}</h1>

                        <div class="service-intro__subtitle text">
                            {$_modx->resource.intro_text}
                        </div>

                        <button class="service-intro__btn btn btn-reset _green" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap">
                        <div class="service-intro__waves">
                            <img class="service-intro__wave" src="assets/theme/img/audit-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/audit-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-pink-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-pink-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>
            
            {* Сравнение тарифов *}
            <section class="section service-steps _pt0">
                <div class="container">
                    <h2 class="section__title _pink" data-aos="fade-up">{$_modx->resource.tarif_title}</h2>

                    {set $tarif_table = json_decode($_modx->resource.tarif_table, true)}

                    <div class="price-table__tabs tabs__btns scroll _hidden" data-aos="fade-up">
                        <button class="btn btn-reset tabs__btn _pink _active" type="button" data-tab="1">{$_modx->resource.tarif_name1}</button>
                        <button class="btn btn-reset tabs__btn _pink" type="button" data-tab="2">{$_modx->resource.tarif_name2}</button>
                    </div>

                    <div class="price-table__table" data-aos="fade-up">
                        <div class="price-table__row">
                            <div class="price-table__col _header">
                                <h3 class="price-table__title">Тарифы</h3>
                                <p class="price-table__text text-small">Стоимость рассчитывается индивидуально для каждого проекта
                                </p>
                            </div>
                            <div class="price-table__col _header">
                                <h3 class="price-table__title">{$_modx->resource.tarif_name1}</h3>
                                <p class="price-table__price">{$_modx->resource.tarif_price1}</p>
                                <button class="btn btn-reset _green _hidden-svg-mobile" type="button" data-modal="#modal-order"
                                    data-form-field="{$_modx->resource.tarif_name1} тариф">Оставить заявку
                                    <svg width="31" height="8">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                    </svg>
                                </button>
                            </div>
                            <div class="price-table__col _header">
                                <h3 class="price-table__title">{$_modx->resource.tarif_name2}</h3>
                                <p class="price-table__price">{$_modx->resource.tarif_price2}</p>
                                <button class="btn btn-reset _green _hidden-svg-mobile" type="button" data-modal="#modal-order"
                                    data-form-field="{$_modx->resource.tarif_name2} тариф">Оставить заявку
                                    <svg width="31" height="8">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                    </svg>
                                </button>
                            </div>
                        </div>

                        {foreach $tarif_table as $value}
                            {if $value.section == 'Да'}
                                <div class="price-table__row _subtitle">
                                    <div class="price-table__col">{$value.title}</div>
                                    <div class="price-table__col"></div>
                                    <div class="price-table__col"></div>
                                </div>
                            {else}
                                <div class="price-table__row">
                                    <div class="price-table__col text-small">
                                        {$value.title}
                                    </div>
                                    <div class="price-table__col">
                                        <svg class="price-table__icon _{if $value.tarif1 == 'Да'}true{else}false{/if}" width="50" height="50">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{if $value.tarif1 == 'Да'}true{else}false{/if}"></use>
                                        </svg>
                                    </div>
                                    <div class="price-table__col">
                                        <svg class="price-table__icon _{if $value.tarif2 == 'Да'}true{else}false{/if}" width="50" height="50">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{if $value.tarif2 == 'Да'}true{else}false{/if}"></use>
                                        </svg>
                                    </div>
                                </div>
                            {/if}
                        {/foreach}
                    </div>


                    <div class="price-table__content _active" data-tab-content="1">
                        <div class="price-table__row">
                            <div class="price-table__col _header">
                                <h3 class="price-table__title">{$_modx->resource.tarif_name1}</h3>
                                <p class="price-table__price">{$_modx->resource.tarif_price1}</p>
                                <button class="btn btn-reset _green _hidden-svg-mobile" type="button" data-modal="#modal-order"
                                    data-form-field="{$_modx->resource.tarif_name1} тариф">Оставить заявку
                                    <svg width="31" height="8">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        {foreach $tarif_table as $value}
                            {if $value.section == 'Да'}
                                <div class="price-table__row _subtitle">
                                    <div class="price-table__col">{$value.title}</div>
                                </div>
                            {else}
                                <div class="price-table__row">
                                    <div class="price-table__col">
                                        <div class="text-small">
                                            {$value.title}
                                        </div>
                                        <svg class="price-table__icon _{if $value.tarif1 == 'Да'}true{else}false{/if}" width="50" height="50">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{if $value.tarif1 == 'Да'}true{else}false{/if}"></use>
                                        </svg>
                                    </div>
                                </div>
                            {/if}
                        {/foreach}
                    </div>

                    <div class="price-table__content" data-tab-content="2">
                        <div class="price-table__row">
                            <div class="price-table__col _header">
                                <h3 class="price-table__title">{$_modx->resource.tarif_name2}</h3>
                                <p class="price-table__price">{$_modx->resource.tarif_price2}</p>
                                <button class="btn btn-reset _green _hidden-svg-mobile" type="button" data-modal="#modal-order"
                                    data-form-field="{$_modx->resource.tarif_name1} тариф">Оставить заявку
                                    <svg width="31" height="8">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        {foreach $tarif_table as $value}
                            {if $value.section == 'Да'}
                                <div class="price-table__row _subtitle">
                                    <div class="price-table__col">{$value.title}</div>
                                </div>
                            {else}
                                <div class="price-table__row">
                                    <div class="price-table__col">
                                        <div class="text-small">
                                            {$value.title}
                                        </div>
                                        <svg class="price-table__icon _{if $value.tarif2 == 'Да'}true{else}false{/if}" width="50" height="50">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{if $value.tarif2 == 'Да'}true{else}false{/if}"></use>
                                        </svg>
                                    </div>
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                </div>
            </section>
        </section>
    </main>
{/block}