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

namespace OstOstermannTrendsTheme\Listeners\Controllers\Frontend;

use Enlight_Event_EventArgs as EventArgs;
use Enlight_Controller_Action as Controller;

class Detail
{
    /**
     * ...
     *
     * @var array
     */
    private $configuration;

    /**
     * ...
     *
     * @var array
     */
    private $props = [
        1 => 'Farbe',
        2 => 'Breite',
        3 => 'Länge',
        4 => 'Höhe',
        5 => 'Abmessung',
        10 => 'Modell',
        11 => 'Material',
        12 => 'Raum',
        50 => 'Größe',
        51 => 'Härtegrad',
        52 => 'Bezugsmaterial',
        53 => 'Matratzenart',
        60 => 'Flächengewicht',
        61 => 'Florhöhe',
        62 => 'Fußbodenheizung',
        63 => 'Form',
        64 => 'Muster'
    ];

    /**
     * ...
     *
     * @param array $configuration
     */
    public function __construct(array $configuration)
    {
        // set params
        $this->configuration = $configuration;
    }

    /**
     * ...
     *
     * @param EventArgs $arguments
     */
    public function onPostDispatch(EventArgs $arguments)
    {
        // get the controller
        /* @var $controller Controller */
        $controller = $arguments->get('subject');

        // get parameters
        $request = $controller->Request();
        $view = $controller->View();

        // ...
        $article = $view->getAssign('sArticle');

        // ...
        if ($article['prop_status'] === true || $article['prop_status'] === '1') {
            $properties = [];

            foreach ($this->props as $index => $name) {
                $value = trim($article['prop' . (string) $index]);

                if (empty($value)) {
                    continue;
                }

                $properties[] = [
                    'name' => $name,
                    'value' => $value
                ];
            }

            $article['sProperties'] = $properties;
            $view->assign('sArticle', $properties);
        }
    }
}
