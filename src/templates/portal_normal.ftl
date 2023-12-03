<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>
		${html_title}
	</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"]
		page=top_head_include />
</head>

<body class="${css_class}">
	<@liferay_ui["quick-access"]
		contentId="#main-content" />
	<@liferay_util["include"]
		page=body_top_include />
	<@liferay.control_menu />
	<div class="container-fluid position-relative" id="wrapper">
		<header id="banner" role="banner">
			<div id="heading">
				<div aria-level="1" class="site-title" role="heading">
					<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
					</a>
					<#if show_site_name>
						<span class="site-name" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
						${site_name}
						</span>
					</#if>
				</div>
			</div>
			<#if !is_signed_in>
				<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">
					${sign_in_text}
				</a>
			</#if>
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>
		<section id="content">
			<h2 class="hide-accessible sr-only" role="heading" aria-level="1">
				${htmlUtil.escape(the_title)}
			</h2>
			<#if selectable>
				<@liferay_util["include"]
					page=content_include />
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}
					<@liferay_theme["wrap-portlet"]
						page="portlet.ftl">
						<@liferay_util["include"]
							page=content_include />
						</@>
			</#if>
		</section>
		<footer id="footer" role="contentinfo">
			<p class="powered-by">
				<@liferay.language_format
					arguments='<a href="http://www.liferay.com" rel="external">Liferay</a>'
					key="powered-by-x" />
			</p>
		</footer>
	</div>
	<@liferay_util["include"]
		page=body_bottom_include />
	<@liferay_util["include"]
		page=bottom_include />
	<@themeJs filename='jquery-1.11.0.js' />
	<@themeJs filename='jquery-migrate-1.2.1.js' />
	<@themeJs filename='slick.js' />
</body>

</html>
<#macro themeJs filename>
	<#assign relative_path=javascript_folder + '/' + filename />
	<#assign resource_url=portalUtil.getStaticResourceURL(request, relative_path) />
	<#assign url=htmlUtil.escape(resource_url) />
	<script src="${url}"></script>
</#macro>