<p><strong>Форма была отправлена со страницы:</strong> <a href="{$page}">{$pageName}</a></p>

{if $target}
	<p><strong>Целевая кнопка:</strong> {$target}</p>
{/if}

{if $name}
	<p><strong>Имя:</strong> {$name}</p>
{/if}

{if $phone}
	<p><strong>Телефон:</strong> {$phone}</p>
{/if}

{if $email}
	<p><strong>Email:</strong> {$email}</p>
{/if}

{if $message}
	<p><strong>Сообщение:</strong> {$message}</p>
{/if}

{if $website}
	<p><strong>Ссылка на ваш сайт:</strong> {$website}</p>
{/if}

{if $region}
	<p><strong>Регион продвижения:</strong> {$region}</p>
{/if}

{if $where}
	<p><strong>Где продвигаем:</strong> {$where}</p>
{/if}

{if $utm_source or $utm_medium or $utm_campaign or $utm_term or $utm_content or $utm_keyword}

	<p>
		=================<br>
		{if $utm_source}
			<strong>utm_source:</strong> {$utm_source}<br>
		{/if}

		{if $utm_medium}
			<strong>utm_medium:</strong> {$utm_medium}<br>
		{/if}

		{if $utm_campaign}
			<strong>utm_campaign:</strong> {$utm_campaign}<br>
		{/if}
		
		{if $utm_term}
			<strong>utm_term:</strong> {$utm_term}<br>
		{/if}

		{if $utm_content}
			<strong>utm_content:</strong> {$utm_content}<br>
		{/if}

		{if $utm_keyword}
			<strong>utm_keyword:</strong> {$utm_keyword}<br>
		{/if}
	</p>
{/if}

