<section class="section {$seo_cases_classnames}">
    <div class="container">
        <h2 class="section__title _blue" data-aos="fade-up">Кейсы</h2>
        <div class="service-cases">
            {set $seo_cases = json_decode($_modx->resource.seo_cases, true)}
            {foreach $seo_cases as $value}
                <article class="service-cases__item" data-aos="fade-up">
                    <div class="service-cases__content">
                        <img class="service-cases__icon" src="assets/images/{$value.icon}" alt="{$value.website | escape}" width="40" height="40">
                        <h3 class="service-cases__title">{$value.website}</h3>
                        <p class="service-cases__text _blue">{$value.industry}</p>
                        <p class="service-cases__text">{$value.description}</p>
                    </div>

                    <div class="service-cases__statistics">
                        <div class="service-cases__statistic">
                            <div class="service-cases__statistic-title">{$value.gradient_title1} <span>{$value.gradient_value1}</span></div>
                            <div class="service-cases__statistic-line" data-aos="fade-right">
                                <img src="assets/theme/img/service-case-line.svg" alt="">
                                <div class="service-cases__statistic-gradient" style="width: {$value.gradient_percent1}%"></div>
                            </div>
                        </div>

                        <div class="service-cases__statistic">
                            <div class="service-cases__statistic-title">{$value.gradient_title2} <span>{$value.gradient_value2}</span></div>
                            <div class="service-cases__statistic-line" data-aos="fade-right">
                                <img src="assets/theme/img/service-case-line.svg" alt="">
                                <div class="service-cases__statistic-gradient" style="width: {$value.gradient_percent2}%"></div>
                            </div>
                        </div>
                    </div>
                </article>
            {/foreach}
        </div>
    </div>
</section>