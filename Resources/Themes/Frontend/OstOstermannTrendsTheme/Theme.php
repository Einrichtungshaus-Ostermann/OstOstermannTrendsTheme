<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Ostermann Trends Theme
 *
 * @package   OstOstermannTrendsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace Shopware\Themes\OstOstermannTrendsTheme;

use Shopware\Components;

class Theme extends Components\Theme
{
    /**
     * ...
     *
     * @var string
     */
    protected $extend = 'Responsive';

    /**
     * ...
     *
     * @var string
     */
    protected $name = 'Ostermann / Trends Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $description = 'Ostermann / Trends Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $author = 'Einrichtungshaus Ostermann GmbH & Co. KG';

    /**
     * ...
     *
     * @var string
     */
    protected $license = 'New BSD';

    /**
     * ...
     *
     * @var bool
     */
    protected $injectBeforePlugins = false;

    /**
     * ...
     *
     * @var array
     */
    protected $javascript = [];

    /**
     * {@inheritdoc}
     */
    public function createConfig(Components\Form\Container\TabContainer $container)
    {
        // ...
        $this->addAttributes($container);
        $this->addFooter($container);
    }



    /**
     * {@inheritdoc}
     */
    private function addAttributes(Components\Form\Container\TabContainer $container)
    {
        // create our attribute tab
        $tab = $this->createTab("attribute_tab", "Attribute");

        // create fieldset
        $fieldset = $this->createFieldSet("attribute_fieldset", "Attribute");

        // create every fieldset
        $fieldset->addElement($this->createTextField("attribute_company", "Firma", "attr1"));
        $fieldset->addElement($this->createTextField("attribute_shipping_costs", "Versandkosten", "attr8"));
        $fieldset->addElement($this->createTextField("attribute_shipping_method", "Versandart", "attr13"));
        $fieldset->addElement($this->createTextField("attribute_delivery_time", "Lieferzeit", "attr12"));
        $fieldset->addElement($this->createTextField("attribute_dispo", "Disposition", "attr11"));
        $fieldset->addElement($this->createTextField("attribute_fullservice", "Vollservice", "attr18"));
        $fieldset->addElement($this->createTextField("attribute_assembly_surcharge", "Montagekosten", "attr16"));

        // add it
        $tab->addElement($fieldset);
        $container->addTab($tab);
    }




    /**
     * {@inheritdoc}
     */
    private function addFooter(Components\Form\Container\TabContainer $container)
    {
        // create our attribute tab
        $tab = $this->createTab("footer_tab", "Fußzeile");

        // create fieldset
        $fieldset = $this->createFieldSet("stores_fieldset", "Filialen");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("payment_fieldset", "Zahlungsarten");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("shipping_fieldset", "Versandarten");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("flags_fieldset", "Flaggen");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("shops_fieldset", "Shops");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("contact_fieldset", "Kontakt");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("security_fieldset", "Sicherheit");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("newsletter_fieldset", "Newsletter");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("social_fieldset", "Social Media");
        $tab->addElement($fieldset);

        // create fieldset
        $fieldset = $this->createFieldSet("seo_fieldset", "SEO");
        $tab->addElement($fieldset);

        // add tab to container
        $container->addTab($tab);
    }
}
