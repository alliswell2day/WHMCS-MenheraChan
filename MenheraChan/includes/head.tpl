    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/base.min.css" rel="stylesheet">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/project.min.css" rel="stylesheet">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/other.css" rel="stylesheet">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/switchery.min.css" rel="stylesheet">

    <script type="text/javascript">
        var csrfToken = '{$token}',
            markdownGuide = '{lang key="markdown.title"}',
            locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
            saved = '{lang key="markdown.saved"}',
            saving = '{lang key="markdown.saving"}';
    </script>

    {if $templatefile == "viewticket" && !$loggedin}
      <meta name="robots" content="noindex" />
    {/if}