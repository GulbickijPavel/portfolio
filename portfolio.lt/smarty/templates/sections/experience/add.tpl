{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
               {$successmsg}
                <form class="form-horizontal" action="save.php?sectionname=experience-add" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <legend>{translation langEn="New"}
                            <a href="../../php/actions/change.php?sectionname=expr" class="btn btn-default right">{translation langEn="Back"}</a>
                        </legend>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Company"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="company" id="company" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Address"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="address" id="address" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Website"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="url" id="url" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Work start"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="periodstart" id="periodstart" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Work end"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="periodend" id="periodend" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Position"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="" name="position" id="position" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                          <div class="col-lg-10">
                            <textarea class="form-control" name="description"rows="3" id="editor"></textarea>
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
        </script>
    </body>
</html>