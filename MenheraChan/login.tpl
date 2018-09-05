<div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
    <section class="content-inner">
        <nav class="tab-nav margin-top-no">
            <ul class="nav nav-justified">
                <li class="active">
                    <a class="waves-attach" data-toggle="tab" href="#passwd_login">{$LANG.login}</a>
                </li>
                <li>
                    <a class="waves-attach" href="register.php">{$LANG.register}</a>
                </li>
            </ul>
        </nav>
        <div class="card-inner">
            <div class="tab-content">
                <div class="tab-pane fade active in" id="passwd_login">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-header">
                                <div class="card-inner">
                                    <h1 class="card-heading" style=" text-align:center;font-weight:bold;">登录到用户中心</h1>
                                </div>
                            </div>
                            <div class="card-inner">
                                {if $incorrect}
                                        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
                                {elseif $verificationId && empty($transientDataName)}
                                        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.verificationKeyExpired textcenter=true}
                                {elseif $ssoredirect}
                                        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.sso.redirectafterlogin textcenter=true}
                                {/if}
                                <form method="post" action="{$systemurl}dologin.php" role="form">
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-10 col-md-push-1">
                                                <label class="floating-label" for="username">{$LANG.enteremail}</label>
                                                <input class="form-control" id="username" type="text" name="Email"></div>
                                        </div>
                                    </div>
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-10 col-md-push-1">
                                                <label class="floating-label" for="password">{$LANG.clientareapassword}</label>
                                                <input class="form-control" id="password" type="password" name="Password"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-10 col-md-push-1">
                                                <button id="login" type="submit" class="btn btn-block btn-brand waves-attach waves-light">{$LANG.loginbutton}</button></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-10 col-md-push-1">
                                                <div class="checkbox checkbox-adv">
                                                    <label for="rememberme">
                                                        <input class="access-hide" value="week" id="rememberme" name="rememberme" type="checkbox">{$LANG.loginrememberme}
                                                        <span class="checkbox-circle"></span>
                                                        <span class="checkbox-circle-check"></span>
                                                        <span class="checkbox-circle-icon icon">done</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>               
        <div class="clearfix">
            <p class="margin-no-top pull-left">
                <a class="btn btn-flat btn-brand waves-attach" href="pwreset.php">{$LANG.forgotpw}</a></p>
            <p class="margin-no-top pull-right">
                <a class="btn btn-flat btn-brand waves-attach" href="register.php">{$LANG.register}</a></p>
        </div>
        <div aria-hidden="true" class="modal modal-va-middle fade" id="result" role="dialog" tabindex="-1">
            <div class="modal-dialog modal-xs">
                <div class="modal-content">
                    <div class="modal-inner">
                        <p class="h5 margin-top-sm text-black-hint" id="msg"></p>
                    </div>
                    <div class="modal-footer">
                        <p class="text-right">
                            <button class="btn btn-flat btn-brand-accent waves-attach" data-dismiss="modal" type="button" id="result_ok">知道了</button></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>