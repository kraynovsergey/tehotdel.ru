<section class="section _pb0">
    <section class="section _radius _white">
        <div class="container">
            <div class="clients__header">
                <h2 class="section__title clients__title" data-aos="fade-up">{1 | resource : 'clients_title'}</h2>
                <p class="clients__text text-red" data-aos="fade-up" data-aos-delay="100">{1 | resource : 'clients_text'}</p>
            </div>

            {set $clients_items = 1 | resource : 'clients_items' | fromJSON}
            {if $clients_items | length > 0}
            <div class="swiper _full-tablet" data-aos="fade-up" data-swiper-clients>
                <div class="swiper-wrapper">
                    {foreach $clients_items as $value}
                    <div class="swiper-slide">
                        <div class="clients__item">
                            <div class="clients__picture">
                                <img src="assets/images/{$value.logo}" alt="">
                                <img class="_filter" src="assets/images/{$value.logo_filter}" alt="" loading="lazy">
                            </div>
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
            {/if}
        </div>
    </section>
</section>