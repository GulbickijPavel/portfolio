
        <div class="navbar navbar-default navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
              <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="navbar-collapse collapse" id="navbar-main">
              <ul class="nav navbar-nav">
                    {foreach from=$sections item=item key=key}
                    <li>
                        <a href="#{$item.name}" class="menu_item">{translation langEn={$item.sectionname}}</a>
                    </li>
                    {/foreach}
              </ul>
              <ul class="nav navbar-nav navbar-right">
                     {if ($is_admin)}
                      <li><a><img alt="image" class="settings-img" src="images/settings.png"></a></li>
                      <li><a href="/portfolio/portfolio.lt/logout.php" class="btn btn-danger log-out">{translation langEn="Log-out"}</a></li>
                    {/if}
                    <li><a href="php/setsession.php?lang=lt" id="lang-lt" class="lang-img" data-toggle="tooltip" data-placement="bottom" title="Lt" data-original-title="Lt"><img alt="lt" src="images/lt.gif"></a></li>
                    <li><a href="php/setsession.php?lang=en" id="lang-en" class="lang-img" data-toggle="tooltip" data-placement="bottom" title="En" data-original-title="En"><img alt="en" src="images/en.png"></a></li>
                    <li><a  href="php/setsession.php?lang=ru "id="lang-ru" class="lang-img" data-toggle="tooltip" data-placement="bottom" title="Ru" data-original-title="Ru"><img alt="ru" src="images/ru.png"></a></li>
              </ul>  
            </div>
          </div>
        </div>
        {if (!$is_admin)}

             {else}
<!--
            <table class="log-info">
                <tr>
                    <td> Loged as</td>
                    <td>{$loged_as} </td>
                </tr> 
                <tr>
                    <td> Last Login</td>
                    <td>{$date} </td>
                </tr>
                <tr>
                    <td> Date </td>
                    <td> {$date} </td>
                </tr>
                <tr>
                    <td> Session ID </td>
                     <td>   {$SID} </td>
                </tr>
            </table>
-->
        {/if}