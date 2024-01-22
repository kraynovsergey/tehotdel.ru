<footer class="footer section _black _radius _pt0 _pb0">
    <div class="footer__top" data-aos="fade-up">
        <div class="container">
            <h2 class="section__title">Контакты</h2>
            <div class="footer__contacts">
                <address class="footer__contact">
                    <p class="footer__contact-title text-small">Телефон</p>
                    <a class="footer__contact-value footer__contact-link" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone' | config}</a>
                </address>

                <address class="footer__contact">
                    <p class="footer__contact-title text-small">Почта</p>
                    <a class="footer__contact-value footer__contact-link" href="mailto:{'email' | config}">{'email' | config}</a>
                </address>

                {if 'vk' | config}
                    <address class="footer__contact">
                        <p class="footer__contact-title text-small">Соц. сети</p>
                        <a class="footer__contact-value footer__contact-link" href="{'vk' | config}" target="_blank" rel="nofollow">VK</a>
                    </address>
                {/if}

                <address class="footer__contact _full">
                    <p class="footer__contact-title text-small">Адрес</p>
                    <p class="footer__contact-value">{'address' | config}</p>
                </address>
            </div>

            <div class="footer__wrap-btn">
                <button class="footer__btn btn btn-reset _white-bordered" type="button"
                    data-modal="#modal-order">Обсудить проект
                    <svg width="31" height="8">
                        <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                    </svg>
                </button>
            </div>
        </div>

        <svg class="footer__wave" width="887" height="678">
            <use xlink:href="assets/theme/img/icons/icons.svg#footer-wave"></use>
        </svg>
    </div>

    <div class="footer__middle" data-aos="fade-up">
        <div class="container footer__navs">
            <nav class="footer__nav">
                <h3 class="footer__nav-title">Услуги</h3>
                {'pdoMenu' | snippet : [
	                'parents' => 2,
	                'level' => 1,
	                'includeTVs' => '',
	                'plPrefix' => '',
                    'outerClass' => 'footer__list list-reset',
                    'hereClass' => '_active',
                    'tpl' => '@INLINE <li><a {$classes} href="{$link}" {$attributes}>{$menutitle}</a></li>'
                ]}
            </nav>

            <nav class="footer__nav">
                <h3 class="footer__nav-title">О компании</h3>
                {'pdoMenu' | snippet : [
	                'parents' => 9,
	                'level' => 1,
	                'includeTVs' => '',
	                'plPrefix' => '',
                    'hereClass' => '_active',
                    'tplOuter' => '@INLINE 
                        <ul class="footer__list list-reset">
                            <li><a href="{4 | url}">{4 | resource : \'pagetitle\'}</a></li>
                            {$wrapper}
                            <li><a href="{12 | url}">{12 | resource : \'pagetitle\'}</a></li>
                        </ul>
                    ',
                    'tpl' => '@INLINE <li><a {$classes} href="{$link}" {$attributes}>{$menutitle}</a></li>'
                ]}
            </nav>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="container footer__bottom-container">
            <div class="text-small">© {'' | date : 'Y'} Tehotdel</div>
            <a class="text-small footer__bottom-link" 
                href="https://reestr.digital.gov.ru/reestr/1505873/?sphrase_id=3945884" 
                target="_blank" rel="nofollow">
                Мы в реестре Российского программного обеспечения
                <svg width="30" height="30">
                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-angle"></use>
                </svg>
            </a>
        </div>
    </div>
</footer>