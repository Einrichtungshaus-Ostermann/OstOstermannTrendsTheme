<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Ostermann Trends Theme
 *
 * Ostermann / Trends Theme
 *
 * 1.0.0
 * - initial release
 *
 * 1.0.1
 * - fixed faulty name in composer.json
 *
 * 1.0.2
 * - fixed preview.png
 *
 * 1.0.3
 * - moved css from child theme to parent theme
 *
 * 1.0.4
 * - fixed image-zoom
 * - fixed category-teaser
 *
 * 1.0.5
 * - fixed theme for ost-article-family update
 *
 * 1.0.6
 * - added 3-column and 4-column listing layout
 *
 * 1.0.7
 * - changed price in product-boxes
 *
 * 1.0.8
 * - removed forced upper-case for topbar menu navigation
 *
 * 1.0.9
 * - removed forced upper-case via css for topbar menu navigation
 *
 * 1.0.10
 * - removed "plus shipping costs" link from ajax-cart
 * - removed newcomer badge
 *
 * 1.0.11
 * - removed top margin of first and bottom margin of last element within
 *   emotion html element
 * - changed faq urls
 * - fixed top and botton margin of emotions on index controller
 * - fixed phone viewports
 *
 * 1.0.12
 * - changed ost-article-family slider to drop unfinished columns and reduce
 *   the number of rows if necessary
 *
 * 1.0.13
 * - fixed landing page top margin
 * - removed category sidebar from supplier-modified plugin
 *
 * 1.0.14
 * - removed percentage badge from product-box
 * - switched colors for discount-price and default-price
 *
 * 1.0.15
 * - removed additional panel for enterprise search
 *
 * 1.0.16
 * - added css for sovido
 *
 * @package   OstOstermannTrendsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstOstermannTrendsTheme;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context;
use Symfony\Component\DependencyInjection\ContainerBuilder;

class OstOstermannTrendsTheme extends Plugin
{
    /**
     * ...
     *
     * @param ContainerBuilder $container
     */
    public function build(ContainerBuilder $container)
    {
        // set plugin parameters
        $container->setParameter('ost_ostermann_trends_theme.plugin_dir', $this->getPath() . '/');
        $container->setParameter('ost_ostermann_trends_theme.view_dir', $this->getPath() . '/Resources/views/');

        // call parent builder
        parent::build($container);
    }

    /**
     * Activate the plugin.
     *
     * @param Context\ActivateContext $context
     */
    public function activate(Context\ActivateContext $context)
    {
        // clear complete cache after we activated the plugin
        $context->scheduleClearCache($context::CACHE_LIST_ALL);
    }

    /**
     * Install the plugin.
     *
     * @param Context\InstallContext $context
     *
     * @throws \Exception
     */
    public function install(Context\InstallContext $context)
    {
        // install the plugin
        $installer = new Setup\Install(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $installer->install();

        // update it to current version
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->install();

        // call default installer
        parent::install($context);
    }

    /**
     * Update the plugin.
     *
     * @param Context\UpdateContext $context
     */
    public function update(Context\UpdateContext $context)
    {
        // update the plugin
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->update($context->getCurrentVersion());

        // call default updater
        parent::update($context);
    }

    /**
     * Uninstall the plugin.
     *
     * @param Context\UninstallContext $context
     *
     * @throws \Exception
     */
    public function uninstall(Context\UninstallContext $context)
    {
        // uninstall the plugin
        $uninstaller = new Setup\Uninstall(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $uninstaller->uninstall();

        // clear complete cache
        $context->scheduleClearCache($context::CACHE_LIST_ALL);

        // call default uninstaller
        parent::uninstall($context);
    }
}
