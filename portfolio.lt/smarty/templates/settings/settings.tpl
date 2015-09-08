{include file='../header.tpl'}
    <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#translations" data-toggle="tab">{translation langEn="Translations"}</a></li>
                  <li><a href="#profile" data-toggle="tab">Punktas1</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                  <div class="tab-pane fade active in" id="translations">
                    <div class="row">
                         <div class="form-group col-xs-6">
                            <label class="form-group col-xs-3 text-center"><!-{translation langEn="Search"}--></label>
                        </div>
                        <div class="form-group col-xs-6">
                            <input type="text" class="form-control" id="searchfield" value="" placeholder="{translation langEn="Search"}">
                        </div>
                        <div>
                            <label class="form-group col-xs-3">Lt</label>
                            <label class="form-group col-xs-3">En</label>
                            <label class="form-group col-xs-3">Ru</label>
                            <label class="form-group col-xs-3">{translation langEn="Controls"}</label>
                            <div class="form-group col-xs-3">
                              <input type="text" class="form-control" id="new-lt" value="" placeholder="Naujas">
                            </div>
                            <div class="form-group col-xs-3">
                              <input type="text" class="form-control" id="new-en" value="" placeholder="new">
                            </div>
                            <div class="form-group col-xs-3">
                              <input type="text" class="form-control" id="new-ru" value="" placeholder="Новый">
                            </div>
                            <div class="form-group col-xs-3">
                                <div class="form-group row">
                                <img alt="save" src="../images/save.png" id="new-translation" class="form-group save col-xs-4" title="save">
                                <img alt="success" src="../images/success.png" id="save-success" class="form-group ok-msg col-xs-4">
                                </div>
                            </div>
                        </div>
                        <div id="translations-table">
                            {foreach from=$translations item=item key=key}
                            <div id="translation{$item.translationid}">
                                <div class="form-group col-xs-3">
                                  <input type="text" class="form-control list" id="lt{$item.translationid}" value="{$item.lt}">
                                </div>
                                <div class="form-group col-xs-3">
                                  <input type="text" class="form-control list" id="en{$item.translationid}" value="{$item.en}">
                                </div>
                                <div class="form-group col-xs-3">
                                  <input type="text" class="form-control list" id="ru{$item.translationid}" value="{$item.ru}">
                                </div>
                                <div class="form-group col-xs-3">
                                    <div class="form-group row">
                                        <img alt="save" src="../images/save.png" id="{$item.translationid}" class="form-group save col-xs-4 list" title="save">

                                        <img alt="delete" src="../images/delete.png" id="del{$item.translationid}" class="form-group delete col-xs-4 list" title="delete">
                                        <img alt="success" src="../images/success.png" id="okimg{$item.translationid}" class="form-group ok-msg col-xs-4 ">
                                    </div>
                                </div>
                            </div>

                            {/foreach}
                        </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="profile">
                    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
                  </div>
                </div>
            </div>
        </div>
    </div>
    {include file='../footer.tpl'}
    <script>
        $(".save").click(function(event){
            var id = this.id, 
                ru = $('#'+"ru" + id+'').val(),
                en = $('#'+"en" + id+'').val(),
                lt = $('#'+"lt" + id+'').val(),
                request =$.ajax({
                method: "POST",
                url:"../php/actions/save.php",
                data: { sectionname: "translations", trid: id, langru: ru, langen: en, langlt: lt }
            });
            request.success(function(data) {
                 var rufield = $(data).find('#'+"ru" + id+'').val(),
                     enfield = $(data).find('#'+"en" + id+'').val(),
                     ltfield = $(data).find('#'+"lt" + id+'').val();
                 $('#'+"ru" + id+'').val(rufield);
                 $('#'+"en" + id+'').val(enfield);
                 $('#'+"lt" + id+'').val(ltfield);
                $('#okimg'+ id +'').show();
            });

            request.fail(function( jqXHR, textStatus ) {
              alert( "Request failed: " + textStatus );
            });
        });
        $("#new-translation").click(function(event){
            var ru = $('#new-ru').val(),
                en = $('#new-en').val(),
                lt = $('#new-lt').val(),
                request =$.ajax({
                method: "POST",
                url:"../php/actions/save.php",
                data: { sectionname: "translations-new", langru: ru, langen: en, langlt: lt }
            });
            request.success(function(data) {
             /*    var rufield = $(data).find('#'+"ru" + id+'').val(),
                     enfield = $(data).find('#'+"en" + id+'').val(),
                     ltfield = $(data).find('#'+"lt" + id+'').val();
                 $('#'+"ru" + id+'').val(rufield);
                 $('#'+"en" + id+'').val(enfield);
                 $('#'+"lt" + id+'').val(ltfield);*/
                
                $('#save-success').show();
                location.reload();
            });

            request.fail(function( jqXHR, textStatus ) {
              alert( "Request failed: " + textStatus );
            });
        });
        $("#searchfield").on("input", function(e){
            console.log("lt field has been changed");
            
            var ltval = $("#searchfield").val();
            console.log(ltval);
            if(ltval === ""){
                 $('.list').show();
            }
            else{
                $('.list').hide();
                var entry = $('#translations :input').filter(function(){ return this.value.indexOf(ltval) != -1 })[1],
                idtosearch = entry.id.slice(2);
                $('#lt'+idtosearch+'').show();
                $('#en'+idtosearch+'').show();
                $('#ru'+idtosearch+'').show();
                $('#'+idtosearch+'').show();
                $('#del'+idtosearch+'').show();
                if ($('#lt'+idtosearch+'').length){
                    $("#translations-table").prepend($('#translation'+idtosearch+''));
                }
            }
        });
    </script>
    </body>
</html>