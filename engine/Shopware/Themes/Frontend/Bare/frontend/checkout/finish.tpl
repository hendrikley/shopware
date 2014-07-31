{extends file="frontend/index/index.tpl"}

{* Hide sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Hide breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* Hide shop navigation *}
{block name='frontend_index_shop_navigation'}{/block}

{* Step box *}
{block name='frontend_index_navigation_categories_top'}{/block}

{* Hide top bar *}
{block name='frontend_index_top_bar_container'}{/block}

{* Hide footer *}
{block name='frontend_index_footer'}{/block}

{* Main content *}
{block name="frontend_index_content"}
	<div class="content checkout--content finish--content">

		{* Finish teaser message *}
		{block name='frontend_checkout_finish_teaser'}
			<div class="finish--teaser panel has--border">

				{block name='frontend_checkout_finish_teaser_title'}
					<h2 class="panel--title teaser--title is--align-center">{s name="FinishHeaderThankYou"}{/s} {$sShopname}!</h2>
				{/block}

				{block name='frontend_checkout_finish_teaser_content'}
					<div class="panel--body is--wide is--align-center">
						<p class="teaser--text">{s name="FinishInfoConfirmationMail"}{/s}<br />{s name="FinishInfoPrintOrder"}{/s}</p>

						{block name='frontend_checkout_finish_teaser_actions'}

							{* Print button *}
							<a href="#" class="btn btn--primary teaser--btn-print" onclick="self.print()" title="{s name='FinishLinkPrint'}{/s}">
								{s name="FinishLinkPrint"}{/s}
							</a>
						{/block}

						{* Trusted shops form *}
						{block name='frontend_checkout_finish_teaser_trusted_shops'}
							{if {config name=TSID}}
								{include file="frontend/plugins/trusted_shops/form.tpl"}
							{/if}
						{/block}
					</div>
				{/block}
			</div>
		{/block}

		{block name='frontend_checkout_finish_info'}
			<div class="finish--info">

				{block name='frontend_checkout_finish_billing_address'}
					<div class="finish--billing block panel has--border">

						{block name='frontend_checkout_finish_billing_address_title'}
							<h2 class="panel--title is--underline">{s name="ConfirmHeaderBilling" namespace="frontend/checkout/confirm_left"}{/s}</h2>
						{/block}

						{block name='frontend_checkout_finish_billing_address_content'}
							<div class="panel--body is--wide">
								{if $sUserData.billingaddress.company}
									<strong>{$sUserData.billingaddress.company}{if $sUserData.billingaddress.department}<br />{$sUserData.billingaddress.department}{/if}</strong>
									<br>
								{/if}

								{if $sUserData.billingaddress.salutation eq "mr"}
									{s name="ConfirmSalutationMr" namespace="frontend/checkout/confirm_left"}Herr{/s}
								{else}
									{s name="ConfirmSalutationMs" namespace="frontend/checkout/confirm_left"}Frau{/s}
								{/if}

								{$sUserData.billingaddress.firstname} {$sUserData.billingaddress.lastname}<br />
								{$sUserData.billingaddress.street}<br />
								{if $sUserData.billingaddress.additional_address_line1}{$sUserData.billingaddress.additional_address_line1}<br />{/if}
								{if $sUserData.billingaddress.additional_address_line2}{$sUserData.billingaddress.additional_address_line2}<br />{/if}
								{$sUserData.billingaddress.zipcode} {$sUserData.billingaddress.city}<br />
								{if $sUserData.additional.state.statename}{$sUserData.additional.state.statename}<br />{/if}
								{$sUserData.additional.country.countryname}
							</div>
						{/block}
					</div>
				{/block}

				{block name='frontend_checkout_finish_shipping_address'}
					<div class="finish--shipping block panel has--border">

						{block name='frontend_checkout_finish_shipping_address_title'}
							<h2 class="panel--title is--underline">{s name="ConfirmHeaderShipping" namespace="frontend/checkout/confirm_left"}{/s}</h2>
						{/block}

						{block name='frontend_checkout_finish_shipping_address_content'}
							<div class="panel--body is--wide">
								{if $sUserData.shippingaddress.company}
									<strong>{$sUserData.shippingaddress.company}{if $sUserData.shippingaddress.department}<br />{$sUserData.shippingaddress.department}{/if}</strong>
									<br>
								{/if}

								{if $sUserData.shippingaddress.salutation eq "mr"}
									{s name="ConfirmSalutationMr" namespace="frontend/checkout/confirm_left"}Herr{/s}
								{else}
									{s name="ConfirmSalutationMs" namespace="frontend/checkout/confirm_left"}Frau{/s}
								{/if}

								{$sUserData.shippingaddress.firstname} {$sUserData.shippingaddress.lastname}<br/>
								{$sUserData.shippingaddress.street}<br />
								{if $sUserData.shippingaddress.additional_address_line1}{$sUserData.shippingaddress.additional_address_line1}<br />{/if}
								{if $sUserData.shippingaddress.additional_address_line2}{$sUserData.shippingaddress.additional_address_line2}<br />{/if}
								{$sUserData.shippingaddress.zipcode} {$sUserData.shippingaddress.city}<br />
								{if $sUserData.additional.stateShipping.statename}{$sUserData.additional.stateShipping.statename}<br />{/if}
								{$sUserData.additional.countryShipping.countryname}
							</div>
						{/block}
					</div>
				{/block}

				{block name='frontend_checkout_finish_details'}
					<div class="finish--details block panel has--border">

						{* @deprecated block *}
						{block name='frontend_checkout_finish_header_items'}
							{block name='frontend_checkout_finish_details_title'}
								<h2 class="panel--title is--underline">{s name="FinishHeaderItems"}{/s}</h2>
							{/block}
						{/block}

						{block name='frontend_checkout_finish_details_content'}
							<div class="panel--body is--wide">

								{* Invoice number *}
								{block name='frontend_checkout_finish_invoice_number'}
									{if $sOrderNumber}
										<span class="is--bold">{s name="FinishInfoId"}{/s}</span> {$sOrderNumber}<br />
									{/if}
								{/block}

								{* Transaction number *}
								{block name='frontend_checkout_finish_transaction_number'}
									{if $sTransactionumber}
										<span class="is--bold">{s name="FinishInfoTransaction"}{/s}</span> {$sTransactionumber}<br />
									{/if}
								{/block}

								{* Payment method *}
								{block name='frontend_checkout_finish_payment_method'}
									{if $sPayment.description}
										<span class="is--bold">{s name="ConfirmHeaderPayment" namespace="frontend/checkout/confirm_left"}{/s}</span> {$sPayment.description}<br />
									{/if}
								{/block}

								{* Dispatch method *}
								{block name='frontend_checkout_finish_dispatch_method'}
									{if $sDispatch.name}
										<span class="is--bold">{s name="CheckoutDispatchHeadline" namespace="frontend/checkout/confirm_dispatch"}{/s}</span> {$sDispatch.name}
									{/if}
								{/block}
							</div>
						{/block}
					</div>
				{/block}
			</div>
		{/block}

		{block name='frontend_checkout_finish_items'}
			<div class="finish--table product--table">
				<div class="panel has--border">
					<div class="panel--body">

						{* Table header *}
						{block name='frontend_checkout_finish_table_header'}
							{include file="frontend/checkout/finish_header.tpl"}
						{/block}

						{* Article items *}
						{foreach name=basket from=$sBasket.content item=sBasketItem key=key}
							{block name='frontend_checkout_finish_item'}
								{include file='frontend/checkout/finish_item.tpl'}
							{/block}
						{/foreach}

						{* Table footer *}
						{block name='frontend_checkout_finish_table_footer'}
							{include file="frontend/checkout/finish_footer.tpl"}
						{/block}
					</div>
				</div>
			</div>
		{/block}
	</div>
{/block}
