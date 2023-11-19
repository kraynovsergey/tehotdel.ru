<div class="text section _pt0" data-aos="fade-up">
    {$_modx->resource.content}
</div>

<section class="section _black _radius" data-aos="fade-up">
    <div class="container">
        <h2 class="section__title">Расскажите о себе</h2>

        {'!FetchIt' | snippet : [
	        'form' => '@FILE:chunks/forms/career_form.tpl',
	        'validate' => 'name:required,phone:required,info:blank',
	        'hooks' => 'spam,email,FormItSaveForm,planfix',
	        'emailTpl' => '@FILE:chunks/forms/form_report.tpl',
	        'submitVar' => 'career',
	        'emailSubject' => 'Резюме с сайта ' ~ 'site_name' | config,
	        'emailTo' => 'email_form' | config,
	        'emailFrom' => 'emailsender' | config,
	        'emailFromName' => 'site_name' | config,
	        'formName' => 'Резюме',
	        'formFields' => 'page,pageName,target,name,phone,email,message',
	        'fieldNames' => 'pageName==Название страницы,page==Ссылка на страницу,target==Целевая кнопка,name==Имя,phone==Телефон,email==Email,message==Сообщение'
        ]}
        
        <svg class="career__wave" width="291" height="196">
            <use xlink:href="assets/theme/img/icons/icons.svg#career-form-wave"></use>
        </svg>
    </div>
</section>