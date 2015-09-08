{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                {$successmsg}
                <form class="form-horizontal" action="save.php?sectionname=abou" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <legend>{translation langEn="About"}<!--{translation langEn="Control"}/{translation langEn="Change"}--></legend>
<!--
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{translation langEn="About"}" name="" id="disabledInput" disabled="" placeholder="">
                          </div>
                        </div>
-->
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Name"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.name}" name="name" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Surname"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.surname}" name="surname" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Photo"}</label>
                          <div class="col-lg-10">
                            <img src="../../{$user.userphoto}" class="image" alt="image">
                            <input type="hidden" value="{$user.userphoto}" name="uploadedImage"/>
                            <a class="btn btn-info img-upload-btn">{translation langEn="Change"}/{translation langEn="Upload photo"}</a>
                            <input type="file" name="fileToUpload" class="image-upload" id="img-url"/>
                            <img src="" width="200" style="display:none;" id="img-example" />
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Birth date"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.birthdate}" name="birthdate" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Address"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.livingplace}" name="livingplace" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="E-mail"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.email}" name="email" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Mob.phone"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$user.phone}" name="phone" id="" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                          <div class="col-lg-10">
                            <textarea class="form-control" name="info"rows="3" id="editor"> {$user.info}</textarea>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-10 col-lg-offset-2 right">
                            <button type="reset" class="btn btn-default">{translation langEn="Cancel"}</button>
                            <button type="submit" class="btn btn-primary">{translation langEn="Submit"}</button>
                          </div>
                        </div>
                      </fieldset>
                </form>
            </div>
        </div>
        </div>

        {include file='../../footer.tpl'}
        <script>
        $('#img-url').change( function(event) {
        var tmppath = URL.createObjectURL(event.target.files[0]),
            imagename = $("#img-name").val();;
            $("#img-example").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
            $("#disp_tmp_path").val(tmppath);
        });
       initSample();</script>
    </body>
</html>