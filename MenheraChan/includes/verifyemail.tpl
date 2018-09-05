{if $emailVerificationIdValid}
<div class="alert alert-success" role="alert" style="margin-bottom:0;">
    <i class="fa fa-check"></i>
    {$LANG.emailAddressVerified}
</div>
{elseif $emailVerificationIdValid === false}
<div class="alert alert-warning" role="alert" style="margin-bottom:0;">
    <i class="fa fa-times-circle"></i>
    {$LANG.emailKeyExpired}
    <button id="btnResendVerificationEmail" class="btn btn-default btn-xs btn-resend-verify-email hidden-xs pull-right">
        {$LANG.resendEmail}
    </button>
</div>
{elseif $emailVerificationPending && !$showingLoginPage}
<div class="alert alert-danger" role="alert" style="margin-bottom:0;">
    <i class="fa fa-warning"></i>
    {$LANG.verifyEmailAddress}
    <button id="btnResendVerificationEmail" class="btn btn-default btn-xs btn-resend-verify-email hidden-xs pull-right">
        {$LANG.resendEmail}
    </button>
</div>
{/if}

