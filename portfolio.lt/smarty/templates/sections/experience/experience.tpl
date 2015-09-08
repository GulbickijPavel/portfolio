        <section class="jumbotron" id="experience">
            <div class="experience-content">
              
                <h2>{translation langEn="Experience"}
                     {if ($is_admin)}
                    <a class="btn btn-primary right control" id="expr-button">{translation langEn="Control"}</a>
                    {/if}
                </h2>
                <hr>
                <ul class="bxslider">
                {foreach from=$experience item=item key=key}
                <li>
                    <div class="experience-info"> 
                        <span>
                        {translation langEn="Company"}: {$item.company}<br>
                        {translation langEn="Address"} : {$item.address}<br>
                        {translation langEn="Website"}: <a href="{$item.url}">{$item.url}</a><br>
                        {translation langEn="Work period"}: {$item.periodstart} - {$item.periodend}<br>
                        {translation langEn="Position"}: {$item.position}<br>
                        </span>
                    </div>
                    <div class="experience-desc">{$item.description}</div> 
                </li>
                {/foreach}
                </ul>
            </div>   
        </section> 