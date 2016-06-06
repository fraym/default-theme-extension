<?php
/**
 * @link      http://fraym.org
 * @author    Dominik Weber <info@fraym.org>
 * @copyright Dominik Weber <info@fraym.org>
 * @license   http://www.opensource.org/licenses/gpl-license.php GNU General Public License, version 2 or later (see the LICENSE file)
 */
namespace Fraym\Extension\Theme\DefaultTheme;

use Fraym\Annotation\Registry;

/**
 * @package Extension\Theme\DefaultTheme
 * @Registry(
 * name="Fraym Default Theme",
 * repositoryKey="fraym/default-theme-extension",
 * entity={
 *      "\Fraym\Template\Entity\Template"={
 *          {
 *           "name"="Fraym Default Theme",
 *           "filePath"="Template/Default/Extension/Theme/DefaultTheme/Index.tpl"
 *           }
 *      }
 *    }
 * )
 * @Injectable(lazy=true)
 */
class Theme
{
}
