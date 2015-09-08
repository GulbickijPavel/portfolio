{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                {$successmsg}
                <form class="form-horizontal" action="save.php?sectionname=proj-add" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <legend>{translation langEn="New"} {translation langEn="Project"}
                            <a href="../../php/actions/change.php?sectionname=proj" class="btn btn-default right">{translation langEn="Back"}</a>
                        </legend>
                        <input type="hidden" value="" name="projectid" id="project-id">
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="projectname" id="project-name" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Photos"}</label>
                          <div class="col-lg-10">
                            <a class="btn btn-info img-upload-btn">{translation langEn="Upload photos"}</a>
                            <input type="file" name="file1ToUpload" class="image-upload" id="img-url1"/>
                            <img src="" width="200" style="display:none;" id="img-example1" />
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-10">
                            <input type="file" name="file2ToUpload" class="image-upload" id="img-url2"/>
                            <img src="" width="200" style="display:none;" id="img-example2" />
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-10">
                            <input type="file" name="file3ToUpload" class="image-upload" id="img-url3"/>
                            <img src="" width="200" style="display:none;" id="img-example3" />
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                          <div class="col-lg-10">
                            <textarea class="form-control" name="description"rows="3" id="editor"> </textarea>
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
        initSample();
          $('#img-url1').change( function(event) {
            var tmppath = URL.createObjectURL(event.target.files[0]),
                imagename = $("#img-name1").val();;
                $("#img-example1").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
                $("#disp_tmp_path1").val(tmppath);
            });
            $('#img-url2').change( function(event) {
            var tmppath = URL.createObjectURL(event.target.files[0]),
                imagename = $("#img-name2").val();;
                $("#img-example2").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
                $("#disp_tmp_path2").val(tmppath);
            });
            $('#img-url3').change( function(event) {
            var tmppath = URL.createObjectURL(event.target.files[0]),
                imagename = $("#img-name3").val();;
                $("#img-example3").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
                $("#disp_tmp_path3").val(tmppath);
            });
        </script>
    </body>
</html>