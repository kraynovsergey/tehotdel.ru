<header class="header" data-header>
    <div class="container header__container">
        <a class="header__logo" href="{'site_url' | config}">
            <svg class="header__logo-icon" width="160" height="20">
                <use xlink:href="assets/theme/img/icons/icons.svg#logo"></use>
            </svg>
            {ignore}<span class="header__logo-slogan" data-typed><span>{samara}</span></span>{/ignore}
        </a>

        <nav class="header__nav">
            {'pdoMenu' | snippet : [
                'parents' => 0,
                'level' => 2,
                'includeTVs' => '',
                'plPrefix' => '',
                'outerClass' => 'header__list list-reset',
                'hereClass' => '_active',
                'tpl' => '@INLINE <li class="header__list-item"><a class="header__list-link {$classnames}" href="{$link}" {$attributes}>{$menutitle}</a></li>',
                'tplParentRow' => '@INLINE 
                    <li class="header__list-item">
                        <a class="header__list-link {$classnames}" href="{$link}" {$attributes}>
                            {$menutitle}
                            <svg class="header__list-arrow" width="22" height="23">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-down"></use>
                            </svg>
                        </a>
                    </li>',
            ]}
        </nav>

        <div class="header__btns">
            <button class="btn _black-bordered btn-reset _small header__btn" type="button" data-modal="#modal-order">Обсудить проект</button>
            <a class="btn _black-bordered btn-reset _small header__btn" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone' | config}</a>
        </div>

        <button class="header__burger btn-reset" type="button" data-burger><span></span><span></span><span></span></button>
    </div>
</header>