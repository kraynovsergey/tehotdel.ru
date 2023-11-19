<section class="section {$other_services_classnames}">
    <div class="container">
        <h2 class="section__title" data-aos="fade-up">{$_modx->resource.other_services_title}</h2>

        {if $_modx->resource.other_services_text}
            <div class="section _small-padding _pt0 text" data-aos="fade-up">
                {$_modx->resource.other_services_text}
            </div>
        {/if}

        <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
            <div class="swiper-wrapper">
                {'pdoResources' | snippet : [
                'parents' => 2,
                'resources' => $_modx->resource.other_services,
                'depth' => 0,
                'sortby' => 'menuindex',
                'sortdir' => 'ASC',
                'limit' => 0,
                'tpl' => '@FILE:chunks/services/service_item.tpl',
                'includeContent' => 0,
                'includeTVs' => 'svg_sprite_id',
                'tvPrefix' => ''
                ]}
            </div>
        </div>
    </div>
</section>