<section class="section _small-padding {$breadcrumbs_classnames}">
    <div class="container">
        {'pdoCrumbs' | snippet : [
            'showHome' => 1,
            'tplWrapper' => '@INLINE <ul class="breadcrumbs list-reset text-gray" data-aos="fade-up">{$output}</ul>',
            'tpl' => '@INLINE <li class="breadcrumbs__item"><a class="breadcrumbs__link" href="{$link}">{$menutitle}</a></li>',
            'tplCurrent' => '@INLINE <li class="breadcrumbs__item">{$menutitle}</li>',
        ]}
    </div>
</section>