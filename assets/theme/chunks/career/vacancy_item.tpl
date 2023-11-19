<article class="career__item box _transparent _hover">
    <h2 class="career__title box__title">{$menutitle ?: $pagetitle}</h2>
    
    {if $introtext}
        <p class="box__text">{$introtext}</p>
    {/if}

    <div class="box__grow">
        <a class="box__btn btn btn-reset _red-bordered link _full" href="{$id | url}">Подробнее
            <svg width="31" height="8">
                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
            </svg>
        </a>
    </div>
</article>