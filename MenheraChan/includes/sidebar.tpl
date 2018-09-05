{foreach $navbar as $item}
	{if $item->getLabel() ne "Domains"}
		<li>
			<a class="waves-attach" {if $item->hasChildren()}data-toggle="collapse"  href="#{$item->getLabel()}" {else} href="{$item->getUri()}"{/if}>
				<i class="menu-icon fa fa-{$item->getUri()|replace:'/':''|replace:'.php':''|replace:'index?rp=':''|replace:'index':'home'|replace:'clientarea':'home'|replace:'services':'server'|replace:'billing':'credit-card'|replace:'submitticket':'ticket'|replace:'cart':'shopping-cart'|replace:'announcements':'bullhorn'|replace:'knowledgebase':'comment'|replace:'serverstatus':'server'|replace:'contact':'globe'|replace:'affiliates':'universal-access'|replace:'domains':'globe'|replace:'#':'certificate'}"></i>
	            {$item->getLabel()}
	        </a>
		{if $item->hasChildren()}
	        <ul class="menu-collapse collapse" id="{$item->getLabel()}">
	        {foreach $item->getChildren() as $childItem}
				{if $childItem->getLabel() ne "-----" && {$childItem->getId()} ne "Primary_Navbar-Billing-My_Quotes"}
					<li id="{$childItem->getId()}">
						<a href="{$childItem->getUri()}">
							{$childItem->getLabel()}
						</a>
					</li>
				{/if}	
	        {/foreach}
	        </ul>
	    {/if}
	    </li> 
	{/if}
{/foreach}