    <div class="col-lg-6 col-md-6">
        <div class="card">
            <div class="card-main">
                <div class="card-inner">
                    <p class="card-heading" style="line-height: 10px!important;"><i class="fa fa-cube"></i> {$LANG.navservices}</h4>
                </div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                {foreach $panels as $item}
                    {if $item->getLabel() eq $LANG.clientHomePanels.activeProductsServices}
                    <div class="panel-cards {if $item->getChildren()|@count > 4} cards-carousel{/if}">
                        <ul class="cards">
                            <li>
                                {foreach from=$item->getChildren() key=i item=prod}
                                    <a class="card-row" href="clientarea.php?action=productdetails&id={$prod->getId()}">
                                        <span class="cell-title">{$prod->getLabel()|@replace:'<br />':''|replace:'<span class="text-domain">':'</span><span class="cell-cycle"><span class="text-muted"></span>'}</span>
                                    </a>
                                    {if $item->getChildren()|@count != ($i+1)}
                                        {if ($i+1) % 4 == 0}</li><li>{/if}
                                    {/if}
                                {foreachelse}
                                    <a class="card-row">
                                        {$LANG.ordernoproducts}
                                    </a>
                                {/foreach}
                            </li>
                        </ul>
                        <div class="cards-nav">
                            {if $item->getChildren()|@count > 4}
                            <button class="card-prev btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_left</i>
                            </button>
                            {/if}
                            <span class="card-number"><b class="number-current">{if $item->getChildren()|@count > 4}4{else}{$item->getChildren()|@count}{/if}</b>/<span class="number-total">{$item->getChildren()|@count}</span></span>
                            {if $item->getChildren()|@count > 4}
                            <button class="card-next btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_right</i>
                            </button>
                            {/if}
                        </div>
                    </div>
                    {/if}
                {/foreach}
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6 col-md-6">
        <div class="card">
            <div class="card-main">
                <div class="card-inner">
                    <p class="card-heading" style="line-height: 10px!important;"><i class="fa fa-cube"></i> {$LANG.navbilling}</h4>
                </div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel-cards {if $invoices|@count > 4} cards-carousel{/if}">
                        <ul class="cards">
                            <li>
                                {foreach from=$invoices item=invoice key=i}
                                    <a class="card-row" href="viewinvoice.php?id={$invoice.id}">
                                        <span class="cell-title">#{$invoice.invoicenum}</span>
                                        <span class="cell-date" style="float: left"><span class="text-muted">{$LANG.nextdue}: </span>{$invoice.datedue}</span>
                                        <span class="cell-total"><span class="price text-danger">{$invoice.total}</span></span>
                                    </a>
                                    {if $invoices|@count != ($i+1)}
                                        {if ($i+1) % 4 == 0}</li><li>{/if}
                                    {/if}
                                {foreachelse}
                                    <a class="card-row">
                                        {$LANG.invoicesnoneunpaid}
                                    </a>
                                {/foreach}
                            </li>
                        </ul>
                        <div class="cards-nav">
                            {if $invoices|@count > 4}
                            <button class="card-prev btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_left</i>
                            </button>
                            {/if}
                            <span class="card-number"><b class="number-current">{if $invoices|@count > 4}4{else}{$invoices|@count}{/if}</b>/<span class="number-total">{$invoices|@count}</span></span>
                            {if $invoices|@count > 4}
                            <button class="card-next btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_right</i>
                            </button>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6 col-md-6">
        <div class="card">
            <div class="card-main">
                <div class="card-inner">
                    <p class="card-heading" style="line-height: 10px!important;"><i class="fa fa-cube"></i> {$LANG.yourtickets}</h4>
                </div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel-cards {if $tickets|@count > 4} cards-carousel{/if}">
                        <ul class="cards">
                            <li>
                                {foreach from=$tickets item=ticket key=i}
                                    <a class="card-row" href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}">
                                        <span class="cell-title">{if $ticket.unread}<strong>{/if}<b>#{$ticket.tid}</b> - {$ticket.subject}{if $ticket.unread}</strong>{/if}</span>
                                        <span class="cell-status"><span class="label label-simple label-{$ticket.statusClass}">{$ticket.status|strip_tags:false}</span></span>
                                        <span class="cell-date"><span class="text-muted">{$LANG.supportticketsreply}: </span>{$ticket.lastreply}</td>
                                    </a>
                                {if $tickets|@count != ($i+1)}
                                {if ($i+1) % 4 == 0}</li><li>{/if}
                                {/if}
                                {foreachelse}
                                    <a class="card-row">
                                        {$LANG.supportticketsnotfound}
                                    </a>
                                {/foreach}
                            </li>
                        </ul>
                        <div class="cards-nav">
                            {if $tickets|@count > 4}
                            <button class="card-prev btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_left</i>
                            </button>
                            {/if}
                            <span class="card-number"><b class="number-current">{if $tickets|@count > 4}4{else}{$tickets|@count}{/if}</b>/<span class="number-total">{$tickets|@count}</span></span>
                            {if $tickets|@count > 4}
                            <button class="card-next btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_right</i>
                            </button>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <div class="col-lg-6 col-md-6">
        <div class="card">
            <div class="card-main">
                <div class="card-inner">
                    <p class="card-heading" style="line-height: 10px!important;"><i class="fa fa-cube"></i> {$LANG.latestannouncements}</h4>
                </div>
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel-cards {if $announcements|@count > 4} cards-carousel{/if}">
                        <ul class="cards">
                            <li>
                                {foreach from=$announcements item=announcement key=i}
                                    <a class="card-row" href="announcements.php?id={$announcement['id']}">
                                        <span class="cell-title">{$announcement['title']}</span>
                                        <span class="cell-date">{$announcement['date']}</td>
                                    </a>
                                {if $announcements|@count != ($i+1)}
                                {if ($i+1) % 4 == 0}</li><li>{/if}
                                {/if}
                                {foreachelse}
                                    <a class="card-row">
                                        {$LANG.supportticketsnotfound}
                                    </a>
                                {/foreach}
                            </li>
                        </ul>
                        <div class="cards-nav">
                            {if $announcements|@count > 4}
                            <button class="card-prev btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_left</i>
                            </button>
                            {/if}
                            <span class="card-number"><b class="number-current">{if $announcements|@count > 4}4{else}{$announcements|@count}{/if}</b>/<span class="number-total">{$announcements|@count}</span></span>
                            {if $announcements|@count > 4}
                            <button class="card-next btn btn-default btn-icon btn-link" type="button">
                                <i class="icon">chevron_right</i>
                            </button>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



                    