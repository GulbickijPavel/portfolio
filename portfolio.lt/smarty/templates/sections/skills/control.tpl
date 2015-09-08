{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                <div class="alert alert-dismissible alert-success alert-box">
                  <button type="button" class="close" data-dismiss="alert" >×</button>
                  <a href="#" class="alert-link"></a>
                </div>
                {$successmsg}
                    <form class="form-horizontal" action="save.php?sectionname=skil" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <div class="row">
                            <legend>{translation langEn="Skills"}
                                <a class="btn btn-primary right control" id="skil-add-button">{translation langEn="New"}</a>
                            </legend>
                            <div class="form-group">
                                <div class="">
                                    <label  class="col-lg-2 control-label">{translation langEn="Choose"}</label>
                                </div>
                                <div id="skill-box">
                                </div>
                                <div class="col-lg-2">
                                    <a class="btn btn-danger" id="del-button">{translation langEn="Delete"}</a>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label">{translation langEn="Knowledge"}</label>
                                <div id="knowledge-box"></div>
                            </div>
                            <input type="hidden" value="{$skill.skillid}" name="skillid" id="skill-id">
                            <div class="form-group">
                              <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                              <div class="col-lg-10">
                                <input type="text" class="form-control" value="{$skill.skillname}" name="skillname" id="skill-name-en">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-lg-2 control-label">{translation langEn="Photo"}</label>
                              <div class="col-lg-10">
                                <img src="{$skill.skillimage}" class="image" alt="skill image" id="skill-image">
                                <input type="hidden" value="{$skill.skillimage}" name="uploadedImage" id="uploadedimage-id">
                                <a class="btn btn-info img-upload-btn">{translation langEn="Change"}/{translation langEn="Upload photo"}</a>
                                <input type="file" name="fileToUpload" class="image-upload" id="img-url"/>
                                <img src="" width="200" style="display:none;" id="img-example" />
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                              <div class="col-lg-10">
                                <textarea class="form-control" name="infoEn" rows ="5" id="editor-en">{$skill.descriptionEn}</textarea>
                              </div>
                                <label for="textArea" class="col-lg-2 control-label">Lt</label>
                              <div class="col-lg-10">
                                <textarea class="form-control" name="infoLt" rows ="5" id="editor-lt">{$skill.descriptionLt}</textarea>
                              </div>
                                <label for="textArea" class="col-lg-2 control-label">Ru</label>
                              <div class="col-lg-10">
                                <textarea class="form-control" name="infoRu" rows ="5" id="editor-ru">{$skill.descriptionRu}</textarea>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-lg-10 col-lg-offset-2 right">
                                <button type="reset" class="btn btn-default">{translation langEn="Cancel"}</button>
                                <button type="submit" class="btn btn-primary" onSubmit="window.location.reload()">{translation langEn="Submit"}</button>
                              </div>
                            </div>
                        </div>
                      </fieldset>
                </form>
                </div>
            </div>
        </div>
        {include file='../../footer.tpl'}
        <script type="text/javascript" src="/portfolio/portfolio.lt/js/skills/script.js"></script>
    </body>
</html>