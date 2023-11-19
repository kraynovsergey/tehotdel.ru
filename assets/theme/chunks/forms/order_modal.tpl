<div class="modal scroll _hidden" id="modal-order" data-lenis-prevent>
    <div class="container modal__container">
        <div class="section__header">
            <h2 class="section__title">{'order_form_title' | config}</h2>
            <button class="modal__close btn-reset" type="button" data-modal-close></button>
        </div>

        {'!FetchIt' | snippet : [
	        'form' => '@FILE:chunks/forms/order_form.tpl',
	        'validate' => 'name:required,phone:required,info:blank',
	        'hooks' => 'spam,email,FormItSaveForm,planfix',
	        'emailTpl' => '@FILE:chunks/forms/form_report.tpl',
	        'submitVar' => 'order',
	        'emailSubject' => 'Заявка с сайта ' ~ 'site_name' | config,
	        'emailTo' => 'email_form' | config,
	        'emailFrom' => 'emailsender' | config,
	        'emailFromName' => 'site_name' | config,
	        'formName' => 'Заявка',
	        'formFields' => 'page,pageName,target,name,phone,message',
	        'fieldNames' => 'pageName==Название страницы,page==Ссылка на страницу,target==Целевая кнопка,name==Имя,phone==Телефон,message==Сообщение'
        ]}

        <svg class="order__wave" width="834" height="726">
            <use xlink:href="assets/theme/img/icons/icons.svg#order-wave"></use>
        </svg>
        
        <img class="modal__circle" src="assets/theme/img/modal-circle.svg" width="540" height="406" alt="" loading="lazy">
    </div>
</div>