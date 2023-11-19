<?php
// session_destroy();

function default_value($var, $default) {
    return empty($var) ? $default : $var;
}

require_once $modx->getOption('assets_path') . 'components/planfix/Planfix_API.php';

$PF = new Planfix_API(array('apiKey' => '8115b66b8e0760ec59e8b1e75ce2f598', 'apiSecret' => '5356f7692b291b2a5dd61b5a02476dd0'));

$PF->setAccount('tehotdel');

// начинаем писать в сессию
session_start();
// if (empty($_SESSION['planfixSid'])) {
    //$PF->setUser(array('login' => 'inspector', 'password' => 'Sl2eves'));
    //$PF->setUser(array('login' => 'usanovanton', 'password' => 'ugi009556'));
    //$PF->setUser(array('login' => 'DOM', 'password' => '5693123'));
    $PF->setUser(array('login' => 'klara', 'password' => '2021morCar1986'));
    //$PF->setUser(array('login' => 'sbugaev', 'password' => 'yasbugaev'));
    //$PF->setUser(array('login' => 'abkin', 'password' => 'Lhjxbkf2017'));
    //$PF->setUser(array('login' => 'avdoshenkov', 'password' => 'Teh26197207'));
    $PF->authenticate();
    $_SESSION['planfixSid'] = $PF->getSid();
// }
$PF->setSid($_SESSION['planfixSid']);


$planfixContact  = $_SESSION['planfixContact'];
$planfixTask     = $_SESSION['planfixTask'];
$planfixSite     = $_SESSION['planfixSite'];

// получаем значения полей из формы
$hookUrl         = $hook->getValue('page');
$hookPhone       = $hook->getValue('phone');
$hookEmail       = $hook->getValue('email');
$hookFio         = $hook->getValue('name');
//$hookSiteCalc    = $hook->getValue('site-calc');
$hookSiteCalc    = $hook->getValue('message');
$hookRegion      = $hook->getValue('region');
$siteCalcInfo    = $hookSiteCalc ? ' More info: ' . $hookSiteCalc : '';
$hookTitle       = default_value($hook->getValue('subject'), 'Новая заявка');

$hookVisitorSrc  = default_value($hook->getValue('visitor_src'), '-');
$hookVisitorType = default_value($hook->getValue('visitor_type'), '-');
$hookUtmSource = default_value($hook->getValue('utm_source'), '-');
$hookUtmMedium = default_value($hook->getValue('utm_medium'), '-');
$hookUtmCampaign = default_value($hook->getValue('utm_campaign'), '-');
$hookUtmTerm = default_value($hook->getValue('utm_term'), '-');
$hookUtmContent = default_value($hook->getValue('utm_content'), '-');
$hookUtmKeyword = default_value($hook->getValue('utm_keyword'), '-');
$hookBlock = default_value($hook->getValue('block'), '-');
$hookPosition = default_value($hook->getValue('position3'), '-');
$hookCrawler = default_value($hook->getValue('crawler3'), '-');
$hookPhrase = default_value($hook->getValue('phrase3'), '-');
$hookPage = default_value($hook->getValue('page3'), '-');
$hookReferer = default_value($hook->getValue('referer3'), '-');
$hookDate = default_value($hook->getValue('date3'), '-');
$hookUtm = default_value($hook->getValue('utm'), '-');
$planfixUserid   = false;

$hookVisitorSrcAPI = '';
switch ($hookVisitorSrc) {
    case 'adwords':
        $hookVisitorSrcAPI = 'Гугл эдвордс';
        break;
    case 'yadirect':
        $hookVisitorSrcAPI = 'Яндекс Директ';
        break;
    case 'direct':
        $hookVisitorSrcAPI = 'Яндекс Директ';
        break;
    case 'google':
        $hookVisitorSrcAPI = 'SEO Google';
        break;
    case 'yandex':
        $hookVisitorSrcAPI = 'SEO Яндекс';
        break;
    default:
       $hookVisitorSrcAPI = 'по ссылке';
}

// контакт
$method = $planfixContact ? 'contact.update' : 'contact.add';
$contact_title = $hookUrl ? $hookUrl : $hookPhone;
$params = array(
    'contact' => array(
        'name'        => default_value($hookFio, 'Новый контакт') . ' - ' . $contact_title
    )
);
if ($hookPhone) { $params['contact']['workPhone'] = $hookPhone; }
if ($hookEmail) { $params['contact']['email'] = $hookEmail; }
if ($planfixContact) { $params['contact']['id'] = $planfixContact; }
$answer = $PF->api($method, $params);
if ($answer['success']) {
    $_SESSION['planfixContact'] = $answer['data']['contact']['id'];
    $planfixContact = $_SESSION['planfixContact'];
}
else {
    //$modx->log(modX::LOG_LEVEL_ERROR, 'ERROR CONTACT: ' . $answer['error_str']);
}

// usedid
$method = 'contact.get';
$params = array(
    'contact' => array(
        'id' => $planfixContact,
    )
);
if ($answer['success']) {
    $planfixUserid = $answer['data']['contact']['userid'];
    //$modx->log(modX::LOG_LEVEL_ERROR, 'SUCCESS USERID: ' . $planfixUserid);
}
else {
    //$modx->log(modX::LOG_LEVEL_ERROR, 'ERROR USERID: ' . $answer['error_str']);
}

// задача
$method = $planfixTask ? 'task.update' : 'task.add';
$hookVisitorSrc = $hookVisitorSrc ? 'VISITOR_SRC: ' . $hookVisitorSrc . '<br/>' : '';
$hookVisitorType = $hookVisitorType ? ' VISITOR_TYPE: ' . $hookVisitorType . '<br/>' : '';
$params = array(
    'task' => array(
        'template'    => 3465726,
        'title'       => $hookTitle,
        'description' => $hookVisitorSrc . $hookVisitorType . $siteCalcInfo,
        'workers'     => array(
            'groups' => array('id' => 72242)
        ),
        'members'     => array( 
            'users' => array(
                array('id' => 573884), // 573884 - Юля
                array('id' => 438828), // 438828 - Женя
                array('id' => 581014), // 581014 - Андрей
                array('id' => 473334), // 473334 - Лена К.
                array('id' => 578474)  // 578474 - Даша
            )
        ),
        'auditors'    => array(
            array('id' => 428798), // 428798 - Марина
            array('id' => 580976), // 580976 - Клара
            array('id' => 581222), // 581222 - Валентин
            array('id' => 581262)  // 581262 - Анатолий
        ),
        'customData' => array(
            'from' => array('id' => 10850, 'value' => 'Обращение с сайта ТО'),
            'source' => array('id' => 10852, 'value' => $hookVisitorSrcAPI)
        )
    )
);
if ($hookUrl) { $params['task']['customData']['site'] = array('id' => 10840, 'value' => $hookUrl); }
if ($hookRegion) { $params['task']['customData']['region'] = array('id' => 10854, 'value' => $hookRegion); }
if ($hookUtmSource) { $params['task']['customData']['utm_source'] = array('id' => 11112, 'value' => $hookUtmSource); }
if ($hookUtmMedium) { $params['task']['customData']['utm_medium'] = array('id' => 11114, 'value' => $hookUtmMedium); }
if ($hookUtmCampaign) { $params['task']['customData']['utm_campaign'] = array('id' => 11116, 'value' => $hookUtmCampaign); }
if ($hookUtmTerm) { $params['task']['customData']['utm_term'] = array('id' => 11118, 'value' => $hookUtmTerm); }
if ($hookUtmContent) { $params['task']['customData']['utm_content'] = array('id' => 11120, 'value' => $hookUtmContent); }
if ($hookUtmKeyword) { $params['task']['customData']['utm_keyword'] = array('id' => 11122, 'value' => $hookUtmKeyword); }
if ($hookBlock) { $params['task']['customData']['block'] = array('id' => 11124, 'value' => $hookBlock); }
if ($hookPosition) { $params['task']['customData']['position'] = array('id' => 11126, 'value' => $hookPosition); }
if ($hookCrawler) { $params['task']['customData']['crawler'] = array('id' => 11128, 'value' => $hookCrawler); }
if ($hookPhrase) { $params['task']['customData']['phrase'] = array('id' => 11130, 'value' => $hookPhrase); }
if ($hookPage) { $params['task']['customData']['page'] = array('id' => 11132, 'value' => $hookPage); }
if ($hookReferer) { $params['task']['customData']['referer'] = array('id' => 11134, 'value' => $hookReferer); }
if ($hookDate) { $params['task']['customData']['date'] = array('id' => 11136, 'value' => $hookDate); }
if ($hookUtm) { $params['task']['customData']['utm'] = array('id' => 11138, 'value' => $hookUtm); }
if ($planfixTask) { $params['task']['id'] = $planfixTask; }
if ($planfixUserid) {
    $params['task']['customData']['contact'] = array('id' => 10842, 'value' => $planfixUserid); 
}
print_r($params['task']['customData']);
$answer = $PF->api($method, $params);
$modx->log(modX::LOG_LEVEL_ERROR, print_r($answer, true));
$modx->log(modX::LOG_LEVEL_ERROR, 'XML: ' . $PF->getLastXML()->asXML());
if ($answer['success']) {
    $_SESSION['planfixTask'] = $answer['data']['task']['id'];
    $planfixTask = $_SESSION['planfixTask'];
}
else {
   // $modx->log(modX::LOG_LEVEL_ERROR, 'ERROR TASK: ' . $answer['error_str']);
}

return true;