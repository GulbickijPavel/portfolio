    <div class="container">
    <div class="main" id="main">
        <section class="jumbotron " id="home">
            <div class="home-content" id="home-content">
            <h2>{translation langEn="Home"}
                {if ($is_admin)}
                    <a class="btn btn-primary right control" id="home-button">{translation langEn="Control"}</a>
                {/if}
            </h2>
                <hr>
                <div class="some-home-text">
                {foreach from=$startpage item=item key=key}
                    {$item.startinfo} 
                {/foreach}
                </div>
                <div id="test">
                    <div id="vortex">
                    {foreach from=$list item=item key=key}
                        {if $key le 8}
                        <img id="{$item.skillid}" class="vortex-image" src="{$item.skillimage}" alt="image">
                        {/if}
                    {/foreach}
                    </div>
                </div>
            </div>
        </section> 