<div class="portfolio__items">
    {'pdoResources' | snippet : [
    'parents' => 4,
    'depth' => 0,
    'sortby' => 'menuindex',
    'sortdir' => 'DESC',
    'limit' => $limit ?: '0',
    'tpl' => '@FILE:chunks/portfolio/portfolio_item.tpl',
    'includeContent' => 0,
    'includeTVs' => 'image',
    'tvPrefix' => '',
    'templates' => $template
    ]}
</div>