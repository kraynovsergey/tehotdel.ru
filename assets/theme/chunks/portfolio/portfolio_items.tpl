<div class="portfolio__items">
    {'pdoResources' | snippet : [
    'parents' => 4,
    'depth' => 0,
    'sortby' => 'publishedon',
    'sortdir' => 'DESC',
    'limit' => 0,
    'tpl' => '@FILE:chunks/portfolio/portfolio_item.tpl',
    'includeContent' => 0,
    'includeTVs' => 'image,portfolio_type',
    'tvPrefix' => '',
    'tvFilters' => 'portfolio_type==='~$filter
    ]}
</div>