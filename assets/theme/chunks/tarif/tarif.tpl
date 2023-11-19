<section class="section {$section_classnames}">
    <div class="container">
        <h2 class="section__title {$title_color}" data-aos="fade-up">{$_modx->resource.tarif_title}</h2>

        {set $tarif = json_decode($_modx->resource.tarif, true)}

        <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
            <div class="swiper-wrapper _cols3">
                {foreach $tarif as $value}
                    <div class="swiper-slide" data-aos="fade-up" data-aos-delay="50">
                        <article class="box {$box_color} _hover">
                            <h3 class="box__title _big">{$value.title}</h3>
                            <p class="box__title _big {$title_color}">{$value.price}</p>
                            <ul class="box__list text-small list-reset">
                                {set $list = json_decode($value.list, true)}
                                {foreach $list as $li}
                                    <li>{$li.title}</li>    
                                {/foreach}
                            </ul>
                            <div class="box__grow">
                                <button class="btn btn-reset {$title_color} _hidden-svg-mobile" type="button" data-modal="#modal-order" data-form-field="{$value.title | escape}">Оставить заявку
                                    <svg width="31" height="8">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                    </svg>
                                </button>
                            </div>
                        </article>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>