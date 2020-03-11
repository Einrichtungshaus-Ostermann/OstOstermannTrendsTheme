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

namespace OstOstermannTrendsTheme\Listeners\Controllers;

use Enlight_Event_EventArgs as EventArgs;
use Enlight_Controller_Action as Controller;

class Frontend
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

        // filter
        $filter = array_map('strtolower', array_map('trim', explode('<br>', nl2br((string) $this->configuration['filterProperties'], false))));

        // assign them
        $view->assign('ostOstermannTrendsThemeFilterProperties', $filter);
    }
}
