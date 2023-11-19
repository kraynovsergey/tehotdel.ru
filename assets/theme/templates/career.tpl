{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>
                
                {'!pdoResources' | snippet : [
	                'parents'  => $_modx->resource.id,
	                'depth' => 0,
	                'sortby' => 'menuindex',
	                'sortdir' => 'ASC',
	                'limit' => 0,
	                'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
	                'includeContent' => 0,
	                'includeTVs' => '',
	                'tvPrefix' => '',
                    'setTotal' => 1,
                    'totalVar' => 'total_vacancies',
                    'toPlaceholder' => 'vacancies',
                ]}

                {if $_modx->getPlaceholder('total_vacancies') > 0}
                    <div class="career__items" data-aos="fade-up">
                        {$_modx->getPlaceholder('vacancies')}
                    </div>
                {else}
                    {include 'file:chunks/career/vacancy_content.tpl'}
                {/if}
            </div>
        </section>
    </main>
{/block}