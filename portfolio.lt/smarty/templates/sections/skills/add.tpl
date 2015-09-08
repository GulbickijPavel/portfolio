{include file='../../header.tpl'}
           <div class="container">
            <div class="main" id="main">
                <div class="jumbotron">
                    {$successmsg}
                    <form class="form-horizontal" action="save.php?sectionname=skil-add" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <legend>{translation langEn="New"}
                            <a href="../../php/actions/change.php?sectionname=skil" class="btn btn-default right">{translation langEn="Back"}</a>
                            </legend>
                            <input type="hidden" value="" name="skillid" id="skill-id">
                            <div class="form-group">
                              <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                              <div class="col-lg-10">
                                <input type="text" class="form-control" value="" name="skillname" id="skill-name" placeholder="">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-lg-2 control-label">{translation langEn="Photo"}</label>
                              <div class="col-lg-10">
<!--                                <img src="../../{$skill.skillimage}" class="image" alt="skill image" id="skill-image">-->
                                <a class="btn btn-info img-upload-btn">{translation langEn="Upload photo"}</a>
                                <input type="file" name="fileToUpload" class="image-upload" id="img-url"/>
                                <img src="" width="200" style="display:none;" id="img-example" />
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                              <div class="col-lg-10">
                                <textarea class="form-control" name="info"rows="3" id="editor" wrap="hard"></textarea>
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
        initSample();
        </script>
    </body>
</html>