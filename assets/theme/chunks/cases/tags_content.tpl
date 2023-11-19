<div class="tabs__content {$idx == 0 ? '_active' : ''}" data-tab-content="{$idx}">
    <div class="swiper box-swiper _full-tablet _hover" data-swiper-cases>
        <div class="swiper-wrapper">
            {'pdoResources' | snippet : [
                'parents' => $_modx->resource.pagetitle,
                'depth' => 0,
                'sortby' => 'publishedon',
                'sortdir' => 'DESC',
                'limit' => 0,
                'tpl' => '@FILE:chunks/cases/case_item.tpl',
                'includeContent' => 0,
                'includeTVs' => 'tags,logo_inline_svg',
                'tvPrefix' => '',
                'tvFilters' => 'tags==%'~$tag~'%'
            ]}
        </div>
    </div>
</div>