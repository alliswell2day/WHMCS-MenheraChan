{if $templatefile ne "homepage"}
<!DOCTYPE html>
<html lang="{$LANG.locale}">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#3f51b5">
	<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
	<meta name="keywords" content="sstap,ssr苹果,ssr安卓,ssr电脑,ssr,ss,围墙,影梭,梯子,手机翻墙,爬墙,科学上网,扶墙,翻墙,电脑翻墙,酸酸乳">

	{include file="$template/includes/head.tpl"}

</head>
<style>
.adminreturndiv{
	visibility: hidden;
}
</style>
<body class="page-brand">
	<header class="header header-transparent header-waterfall ui-header">
		<ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg">format_align_justify</span>
				</a>
			</li>
		</ul>
		<ul class="nav nav-list pull-right">
			<li class="dropdown margin-right">
				{if !$loggedin}
					<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
						<span class="icon icon-cd margin-right">account_circle</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="login.php"><span class="icon icon-lg margin-right">vpn_key</span>{$LANG.login}</a>
						</li>
						<li>
							<a class="padding-right-lg waves-attach" href="register.php"><span class="icon icon-lg margin-right">person_add</span>{$LANG.register}</a>
						</li>
					</ul>
				{else}
					<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
						<span class="icon icon-cd margin-right avatar avatar-sm"><img alt="alt text avatar" src="{if $clientsdetails.email|strpos:'@qq.com'}//q1.qlogo.cn/g?b=qq&nk={$clientsdetails.email|replace:'@qq.com':''}&s=100{else}//cn.gravatar.com/avatar/{$clientsdetails.email|md5}?s=64&d={$systemurl}/templates/{$template}/assets/images/u2.png{/if}"></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a href="{$WEB_ROOT}/clientarea.php?action=details"><span class="icon icon-lg margin-right">account_box</span>{$LANG.clientareanavdetails}</a>
						</li>
						<li>
							<a href="{$WEB_ROOT}/clientarea.php?action=changepw"><span class="icon icon-lg margin-right">vpn_key</span>{$LANG.clientareanavchangepw}</a>
						</li>
						<li>
							<a href="{$WEB_ROOT}/clientarea.php?action=emails"><span class="icon icon-lg margin-right">email</span>{$LANG.navemailssent}</a>
						</li>
						{if $condlinks.addfunds}
						<li>
							<a href="{$WEB_ROOT}/clientarea.php?action=addfunds"><span class="icon icon-lg margin-right">credit_card</span>{$LANG.addfunds}</a>
						</li>
						{/if}
						<li>
							<a class="padding-right-cd waves-attach" href="logout.php"><span class="icon icon-lg margin-right">exit_to_app</span>{$LANG.logouttitle}</a>
						</li>
					</ul>
				{/if}
			</li>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
		<div class="menu-scroll">
			<div class="menu-content">
				<a class="menu-logo" href="/"><i class="icon icon-lg">language</i>{$companyname}</a>
				<ul class="nav">
					{include file="$template/includes/sidebar.tpl" navbar=$primaryNavbar}
					{if !$loggedin}
					<li>
						<div style="position:fixed;bottom:0;">
							<img src="{$WEB_ROOT}/templates/{$template}/assets/images/menu.png" width="230" />
						</div>
					</li>
					{/if}
				</ul>
			</div>
		</div>
	</nav>
	{if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}
		<main class="content">
	    	<div class="container">
	        	<div class="row">
	{else}
		<main class="content">
			<div class="content-header ui-content-header">
				<div class="container">
					<h1 class="content-heading">{$LANG.clientareatitle}</h1>
				</div>
			</div>
	    	<div class="container">
				<section class="content-inner margin-top-no">
					<div class="ui-card-wrap">			
		{if $filename ne 'clientarea'}
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
		{/if}
	{/if}
{else}
{/if}

	



	
