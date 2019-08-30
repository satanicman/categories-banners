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
<div class="product-add-to-cart">
    {if !$configuration.is_catalog}
        {block name='product_quantity'}
            <div class="product-quantity clearfix">
                <div class="qty">
                    <span class="control-label">{l s='Quantity' d='Shop.Theme.Catalog'}</span>
                    <input
                            type="number"
                            name="qty"
                            id="quantity_wanted"
                            value="{$product.quantity_wanted}"
                            class="input-group"
                            min="{$product.minimal_quantity}"
                            aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
                    >
                </div>
                {hook h='displayProductActions' product=$product}
            </div>

            <div class="add">
                <button
                        class="btn btn-primary add-to-cart"
                        data-button-action="add-to-cart"
                        type="submit"
                        {if !$product.add_to_cart_url}
                            disabled
                        {/if}
                >
                    {l s='Add to cart' d='Shop.Theme.Actions'}
                    <i class="ion ion-android-cart icon"></i>
                </button>
                <button
                        type="button"
                        class="btn btn-primary _inherit"
                        {if !$product.add_to_cart_url}
                            disabled
                        {/if}
                >
                    {l s='Quick order' d='Shop.Theme.Actions'}
                </button>
            </div>
        {/block}
    {/if}
</div>
