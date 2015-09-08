        <section class="jumbotron" id="projects">
            <div class="experience-content">
                <h2>{translation langEn="Projects"}
                    {if ($is_admin)}
                    <a class="btn btn-primary right control" id="proj-button">{translation langEn="Control"}</a>
                {/if}
                </h2>
                <hr>
                <ul class="bxslider">
                    {foreach from=$projectslist item=item key=key}
                    <li>
                        <h3> {$item.projectname}</h3>
                        <div class="image-container">
                            <div class="image-box1">
                                <img class="image" src="{$item.image1}" alt="image" />
                            </div> 
                            <div class="image-box2">
                                <img class="image" src="{$item.image2}" alt="image" />
                            </div> 
                            <div class="image-box3">
                                <img class="image" src="{$item.image3}" alt="image" />
                            </div>
                        </div>
                        <article class="experience-desc">
                            <h4> {$item.projectname}</h4>
                            {$item.description}</article>
                    </li>
                    {/foreach}
                </ul>
            </div>   
        </section>