    <section class="jumbotron" id="about">
            <div class="about-content">
                <h2>{translation langEn="About"}
                {if ($is_admin)}
                    <a class="btn btn-primary right control" id="abou-button">{translation langEn="Control"}</a>
                {/if}
                </h2>
                <hr>
                {foreach from=$details item=item key=key}
        <img class="my-photo" alt="photo" src="{$item.userphoto}">
                <div class="about"> 
                    <span>
                        {$item.name} {$item.surname}<br>
                        {translation langEn="Address"} : {$item.livingplace}<br>
                        {translation langEn="Mob.phone"} : {$item.phone} <br>
                        {translation langEn="E-mail"}  : {$item.email} <br>
                        {translation langEn="Birth date"}  : {$item.birthdate} <br>                    
                    </span>
                </div>
                <article class="ar-about">
                   <h6>{translation langEn="Education"} </h6>
                    {$item.info}
                </article>
                {/foreach}
            </div> 
        </section>   
