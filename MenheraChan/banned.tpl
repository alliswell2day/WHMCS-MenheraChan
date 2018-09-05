
    <section class="content-inner">
    	<nav class="tab-nav margin-top-no">
            <ul class="nav nav-justified">
                <li class="active">
                    <a class="waves-attach" data-toggle="tab">{$LANG.bannedtitle}</a>
                </li>
            </ul>
        </nav>
    	<div class="card-inner">
    		<div class="card">
                    <div class="card-main">
                        <div class="card-header">
                            <div class="card-inner">
                                <strong><i class="fa fa-gavel"></i> {$LANG.bannedyourip} {$ip} {$LANG.bannedhasbeenbanned}</strong>
                            </div>
                        </div>
                        <div class="card-inner">
						    <ul>
						        <li>{$LANG.bannedbanreason}: <strong>{$reason}</strong></li>
						        <li>{$LANG.bannedbanexpires}: {$expires}</li>
						    </ul>
						</div>
					</div>
			</div>
		</div>
	</section>