{**
 * 2007-2019 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='product_miniature_item'}
    <article class="product-miniature js-product-miniature col-lg-3" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
        <div class="thumbnail-container">
            <div class="product-header">
                {block name='product_thumbnail'}
                    {if $product.cover}
                        <a href="{$product.canonical_url}" class="thumbnail product-thumbnail">
                            <img
                                    src="{$product.cover.bySize.home_default.url}"
                                    alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                                    data-full-size-image-url="{$product.cover.large.url}"
                            />
                        </a>
                    {else}
                        <a href="{$product.canonical_url}" class="thumbnail product-thumbnail">
                            <img src="{$urls.no_picture_image.bySize.home_default.url}"/>
                        </a>
                    {/if}
                {/block}

                {include file='catalog/_partials/product-flags.tpl' product=$product}
            </div>

            <div class="product-description">
                {block name='product_name'}
                    {if $page.page_name == 'index'}
                        <h3 class="h3 product-title" itemprop="name">
                            <a href="{$product.canonical_url}">{$product.name|truncate:30:'...'}</a></h3>
                    {else}
                        <h2 class="h3 product-title" itemprop="name">
                            <a href="{$product.canonical_url}">{$product.name|truncate:30:'...'}</a></h2>
                    {/if}
                {/block}

                {block name='product_price_and_shipping'}
                    {if $product.show_price}
                        <div class="product-price-and-attributes">
                            {if $product.attributes}
                                <div class="product-attributes">
                                    {foreach from=$product.attributes item="attribute"}
                                        <span class="product-attribute">{$attribute.name}</span>
                                    {/foreach}
                                </div>
                            {/if}

                            {if $product.has_discount}
                                <span class="regular-price">{$product.regular_price}</span>
                            {/if}

                            <span itemprop="price" class="price">{$product.price}</span>
                        </div>
                    {/if}
                {/block}

                {block name='quick_view'}
                    <a class="quick-view btn btn-primary" href="#" data-link-action="quickview">
                        {l s='Quick view' d='Shop.Theme.Actions'}
                    </a>
                {/block}
            </div>
        </div>
    </article>
{/block}
