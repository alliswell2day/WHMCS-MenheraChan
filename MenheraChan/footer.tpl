{if $templatefile ne "homepage"}
    {if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}
            </div>
        </div>
    </main>
    {else}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
    {/if}
    <footer class="ui-footer">
        <div class="container">
            <marquee>&copy; {$companyname} 
                <amarquee></div></footer>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/base.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/project.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/lightslider.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/switchery.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/assets/js/dashboard.js"></script>
    </body>
</html>
{/if}

