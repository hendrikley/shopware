{namespace name="frontend/listing/box_article"}

<div class="product--actions">
    {block name='frontend_listing_box_article_actions_inner'}

		<div class="product--actions-inner">

            {* Compare button *}
            {block name='frontend_listing_box_article_actions_compare'}
                <a href="{url controller='compare' action='add_article' articleID=$sArticle.articleID}"
                   data-product-compare-add="true"
                   rel="nofollow"
                   title="{s name='ListingBoxLinkCompare'}{/s}"
                   class="product--action action--compare btn is--secondary">
                        {s name='ListingBoxLinkCompare'}{/s}
                        <i class="icon--arrow-right is--right is--small"></i>
                </a>
            {/block}

			{* Buy now button *}
			{block name='frontend_listing_box_article_actions_buy_now'}
				{if !$sArticle.priceStartingFrom &&!$sArticle.sConfigurator && !$sArticle.variants && !$sArticle.sVariantArticle && !$sArticle.laststock == 1 && !($sArticle.notification == 1 && {config name="deactivatebasketonnotification"} == 1)}
					<a href="{url controller='checkout' action='addArticle' sAdd=$sArticle.ordernumber}"
					   title="{"{s name='ListingBoxLinkBuy'}{/s}"|escape}"
					   class="product--action action--buynow btn is--secondary is--icon-right"
                       data-add-article="true"
                       data-addArticleUrl="{if $theme.offcanvasCart}{url controller='checkout' action='ajaxAddArticleCart' sAdd=$sArticle.ordernumber}{else}{url controller='checkout' action='addArticle' sAdd=$sArticle.ordernumber}{/if}"
                       {if $theme.offcanvasCart} data-showModal="false"{/if}>
						{s name='ListingBoxLinkBuy'}{/s}
						<i class="icon--arrow-right"></i>
					</a>
				{/if}
			{/block}

			{* More information button *}
			{block name='frontend_listing_box_article_actions_more'}
				<a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}"
                   title="{$sArticle.articleName|escape:"html"}"
				   class="product--action action--more btn is--primary is--icon-right">
					{s name='ListingBoxLinkDetails'}{/s}
					<i class="icon--arrow-right"></i>
				</a>
			{/block}

			{* @deprecated: misleading name *}
			{block name="frontend_listing_box_article_actions_inline"}{/block}
		</div>
    {/block}
</div>
