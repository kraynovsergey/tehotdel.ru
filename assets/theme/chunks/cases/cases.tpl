<section class="section {$cases_classnames}">
    <div class="container">
        {if $all_cases == 1}
            <div class="section__header" data-aos="fade-up">
                <h2 class="section__title">Кейсы</h2>
                <a class="cases__all btn btn-reset _black-bordered" href="{7 | url}">Все кейсы</a>
            </div>
        {else}
            <h2 class="section__title">Кейсы</h2>
        {/if}

        <div class="swiper box-swiper _full-tablet _hover" data-swiper-cases>
            <div class="swiper-wrapper">
                {'pdoResources' | snippet : [
                    'parents' => 7,
                    'resources' => $_modx->resource.cases,
                    'depth' => 0,
                    'sortby' => 'publishedon',
                    'sortdir' => 'DESC',
                    'limit' => 4,
                    'tpl' => '@FILE:chunks/cases/case_item.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'tags,logo_inline_svg',
                    'tvPrefix' => ''
                ]}
            </div>
        </div>

        {if $all_cases == 1}
            <div class="cases__all-tablet">
                <a class="cases__all btn btn-reset _black-bordered" href="{7 | url}">Все кейсы</a>
            </div>
        {/if}
    </div>
</section>