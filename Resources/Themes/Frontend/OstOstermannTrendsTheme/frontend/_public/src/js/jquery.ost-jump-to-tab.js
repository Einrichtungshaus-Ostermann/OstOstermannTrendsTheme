/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Ostermann Trends Theme
 *
 * @package   OstOstermannTrendsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

;(function($) {

    // our plugin
    $.plugin('ostJumpToTab', {

        // defaults options which are set by data attributes
        defaults: {
            tabName: ''
        },

        // on initialization
        init: function()
        {
            // get this
            var me = this;

            // read data attributes
            me.applyDataAttributes();

            // click event
            me._on(me.$el, 'click', $.proxy(me.clickElement, me));
        },

        // ...
        clickElement: function(event)
        {
            // get this
            var me = this;

            // prevent default if this is a link
            event.preventDefault();

            // set parameters
            var $tab = $('a.tab--link[data-tabName="' + me.opts.tabName + '"]');
            var index = $tab.index() || 1;
            var tabMenuProduct = $('body').find('.tab-menu--product').data('plugin_swTabMenu');

            // tab menu even found?
            if (tabMenuProduct) {
                // change the ab
                tabMenuProduct.changeTab(index);
            }

            // and scroll to the tab
            $('body, html').animate({
                scrollTop: $($tab).offset().top
            }, 500);
        },

        // on destroy
        destroy: function()
        {
            // call the parent
            this._destroy();
        }
    });

    // call our plugin
    $('*[data-ost-jump-to-tab="true"]').ostJumpToTab();

})(jQuery);
