{set $image_popup = 'pThumb' | snippet : [
    'input' => 'assets/images/' ~ $value.image,
    'options' => 'h=1080&zc=0&q=90&f=jpg'
]}

{set $image = 'pThumb' | snippet : [
    'input' => 'assets/images/' ~ $value.image,
    'options' => 'w=134&h=187&zc=1&q=90&f=jpg'
]}

{set $image_2x = 'pThumb' | snippet : [
    'input' => 'assets/images/' ~ $value.image,
    'options' => 'w=268&h=374&zc=1&q=90&f=jpg'
]}

{set $image_webp = 'pThumb' | snippet : [
    'input' => 'assets/images/' ~ $value.image,
    'options' => 'w=134&h=187&zc=1&q=90&f=webp'
]}

{set $image_webp_2x = 'pThumb' | snippet : [
    'input' => 'assets/images/' ~ $value.image,
    'options' => 'w=268&h=374&zc=1&q=90&f=webp'
]}

<div class="swiper-slide" data-aos="fade-up">
    <article class="box _white">
        <h3 class="box__title">{$value.company}</h3>
        
        <p class="box__text text-small text-gray">{$value.fullname}</p>
        
        <div class="box__text text-small text">
            {$value.text}
        </div>
        
        <a href="{$image_popup}" data-fancybox>
            <picture class="picture reviews__picture">
                <source type="image/webp" srcset="{$image_webp_2x} 2x, {$image_webp} 1x">
                <img srcset="{$image_2x} 2x, {$image} 1x" alt="{$value.company | escape} - {$value.fullname | escape}" width="134" height="187">
            </picture>
        </a>
    </article>
</div>