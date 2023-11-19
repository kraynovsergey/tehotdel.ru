<div class="modal scroll _hidden" id="modal-services" data-lenis-prevent>
    <div class="container modal__container">
        <div class="section__header">
            <h2 class="section__title">Услуги</h2>
            <button class="modal__close btn-reset" type="button" data-modal-close></button>
        </div>

        {'pdoMenu' | snippet : [
        	'parents' => 2,
	        'level' => 1,
	        'includeTVs' => '',
	        'plPrefix' => '',
            'outerClass' => 'modal__list list-reset',
            'hereClass' => '_active',
            'tpl' => '@INLINE <li><a {$classes} href="{$link}" {$attributes}>{$menutitle}</a></li>'
        ]}

        <img class="modal__circle" src="assets/theme/img/modal-circle.svg" width="540" height="406" alt="" loading="lazy">
    </div>
</div>

<div class="modal scroll _hidden" id="modal-about" data-lenis-prevent>
    <div class="container modal__container">
        <div class="section__header">
            <h2 class="section__title">О компании</h2>
            <button class="modal__close btn-reset" type="button" data-modal-close></button>
        </div>

        {'pdoMenu' | snippet : [
        	'parents' => 9,
	        'level' => 1,
	        'includeTVs' => '',
	        'plPrefix' => '',
            'outerClass' => 'modal__list list-reset',
            'hereClass' => '_active',
            'tpl' => '@INLINE <li><a {$classes} href="{$link}" {$attributes}>{$menutitle}</a></li>'
        ]}

        <svg class="modal__about-wave" width="446" height="296">
            <use xlink:href="assets/theme/img/icons/icons.svg#about-wave"></use>
        </svg>
        
        <img class="modal__circle" src="assets/theme/img/modal-circle.svg" width="540" height="406" alt="" loading="lazy">
    </div>
</div>

<div class="modal mobile-nav scroll _hidden" id="modal-nav" data-lenis-prevent>
    <div class="container modal__container mobile-nav__container">
        {'pdoMenu' | snippet : [
            'parents' => 0,
            'level' => 2,
            'includeTVs' => '',
            'plPrefix' => '',
            'outerClass' => 'mobile-nav__list list-reset',
            'innerClass' => 'mobile-nav__sublist list-reset',
            'hereClass' => '_current',
            'tpl' => '@INLINE <li class="mobile-nav__list-item"><a class="mobile-nav__list-link {$classnames}" href="{$link}" {$attributes}>{$menutitle}</a></li>',
            'tplParentRow' => '@INLINE 
                <li class="mobile-nav__list-item">
                    <a class="mobile-nav__list-link" href="{$link}" data-mobile-nav-link>
                        {$menutitle}
                        <svg class="mobile-nav__list-arrow" width="22" height="23">
                            <use xlink:href="assets/theme/img/icons/icons.svg#arrow-down"></use>
                        </svg>
                    </a>
                    {$wrapper}
                </li>',
            'tplInnerRow' => '@INLINE <li class="mobile-nav__sublist-item"><a class="mobile-nav__sublist-link {$classnames}" href="{$link}" {$attributes}>{$menutitle}</a></li>',
        ]}
        
        <div class="mobile-nav__btns">
            <button class="btn _red-bordered btn-reset" type="button" data-modal="#modal-order">Обсудить проект</button>
            <a class="btn _red-bordered btn-reset" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone' | config}</a>
        </div>
    </div>
</div>