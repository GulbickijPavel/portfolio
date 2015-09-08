 
        <section class="jumbotron" id="skills"> 
            <h2>{translation langEn="Skills"}
                {if ($is_admin)}
                <a class="btn btn-primary right control" id="skil-button">{translation langEn="Control"}</a>
                {/if}
            </h2>
            <hr>
            <div class="content">
                <ul class="skills-list">
                {foreach from=$list item=item key=key}
                     {if $key le 3}
                    <li><img id="skill{$item.skillid}" class="skill-image" src="{$item.skillimage}" alt=""> </li>
                     {/if}
                {/foreach}
                </ul>
                {foreach from=$list item=item key=key}
                {if $key le 3}
                    <article id="skill{$item.skillid}-desc" class="skill-description">
                    <h3>{$item.skillname|capitalize}</h3>
                        {$item.skilldescription|capitalize}
                    </article>
                {/if}
                {/foreach}
                <ul class="skills-list">
                {foreach from=$list item=item key=key}
                    {if $key gt 4 && $key le 8}
                    <li><img id="skill{$item.skillid}" class="skill-image" src="{$item.skillimage}" alt=""> </li>
                    {/if}
                {/foreach}
                </ul>
                {foreach from=$list item=item key=key}
                {if $key gt 4 && $key le 8}
                    <article id="skill{$item.skillid}-desc" class="skill-description">
                    <h3>{$item.skillname|capitalize}</h3>
                        {$item.skilldescription|capitalize}
                    </article>
                {/if}
                {/foreach}
                <ul class="skills-list">
                {foreach from=$list item=item key=key}
                    {if $key gt 8 && $key le 12}
                    <li><img id="skill{$item.skillid}" class="skill-image" src="{$item.skillimage}" alt=""> </li>
                    {/if}
                {/foreach}
                </ul>
                {foreach from=$list item=item key=key}
                {if $key gt 8 && $key le 12}
                    <article id="skill{$item.skillid}-desc" class="skill-description">
                    <h3>{$item.skillname|capitalize}</h3>
                        {$item.skilldescription|capitalize}
                    </article>
                {/if}
                {/foreach}
            </div> 
        </section>