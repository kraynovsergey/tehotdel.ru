{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
                    <div class="swiper-wrapper">
                        {set $awards = json_decode($_modx->resource.awards, true)}
                        {foreach $awards as $value}
                            {set $image = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $value.image,
                                'options' => 'w=410&h=580&zc=1&q=90&f=jpg'
                            ]}

                            {set $image_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $value.image,
                                'options' => 'w=820&h=1160&zc=1&q=90&f=jpg'
                            ]}

                            {set $image_webp = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $value.image,
                                'options' => 'w=410&h=580&zc=1&q=90&f=webp'
                            ]}

                            {set $image_webp_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $value.image,
                                'options' => 'w=820&h=1160&zc=1&q=90&f=webp'
                            ]}

                            {set $image_popup = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $value.image,
                                'options' => 'h=1920&zc=0&q=90&f=jpg'
                            ]}

                            <div class="swiper-slide" data-aos="fade-up">
                                <a href="{$image_popup}" data-fancybox="awards" data-aos="fade-up">
                                    <picture class="picture">
                                        <source type="image/webp" srcset="{$image_webp_2x} 2x, {$image_webp} 1x">
                                        <img srcset="{$image_2x} 2x, {$image} 1x" alt="{$_modx->resource.pagetitle | escape}" width="410" height="580">
                                    </picture>
                                </a>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </section>
    </main>
{/block}