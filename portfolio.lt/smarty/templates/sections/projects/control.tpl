{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                <div class="alert alert-dismissible alert-success alert-box">
                  <button type="button" class="close" data-dismiss="alert" >×</button>
                  <a href="#" class="alert-link"></a>
                </div>
                {$successmsg}
                <form class="form-horizontal" action="save.php?sectionname=proj" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <legend>{translation langEn="Projects"}<!--{translation langEn="Control"}/{translation langEn="Change"}-->
                            <a class="btn btn-primary right control" id="project-add-button">{translation langEn="New"}</a>
                        </legend>
<!--
                         <div class="form-group">
                            <label class="col-lg-2 control-label">{translation langEn="Section"}</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" value="{$section.sectionname}" name="sectionname" id="" placeholder="">
                          </div>
                        </div>
-->
                          <div class="form-group">
                            <label for="select" class="col-lg-2 control-label">{translation langEn="Choose"}</label>
                            <div class="col-lg-10">
                                <div id="combox"></div><a class="btn btn-danger" id="del-button">{translation langEn="Delete"}</a>
                          </div>
                        </div>
                        <input type="hidden" value="{$project.projectid}" name="projectid" id="project-id">
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$project.projectname}" name="projectname" id="project-name" placeholder="">
                          </div>
                        </div>
                        <div class="form-group">
                        <label class="col-lg-2 control-label">{translation langEn="Photos"}</label>
                        <div class="row">
                          <div class="col-xs-3">
                            <div class="col-lg-10">
                            <img src="{$project.image1}" class="image" alt="skill image" id="project-image1">
                            <input type="hidden" value="{$project.image1}" name="image1" id="projectimg1">
                            <input type="file" name="file1ToUpload" class="image-upload" id="img1-url"/>
                            <img src="" width="100" style="display:none;" id="img1-example" />
                          </div>
                          </div>
                          <div class="col-xs-3">
                            <div class="col-lg-10">
                            <img src="{$project.image2}" class="image" alt="skill image" id="project-image2">
                            <input type="hidden" value="{$project.image2}" name="image2" id="projectimg2">
                            <input type="file" name="file2ToUpload" class="image-upload" id="img2-url"/>
                            <img src="" width="100" style="display:none;" id="img2-example" />
                          </div>
                          </div>
                          <div class="col-xs-3">
                            <div class="col-lg-10">
                            <img src="{$project.image3}" class="image" alt="skill image" id="project-image3">
                            <input type="hidden" value="{$project.image3}" name="image3" id="projectimg3">
                            <input type="file" name="file3ToUpload" class="image-upload" id="img3-url"/>
                            <img src="" width="100" style="display:none;" id="img3-example" />
                          </div>
                          </div>
                        </div>
                            <a class="btn btn-info img-upload-btn right">{translation langEn="Change"}/{translation langEn="Upload photos"}</a>
                        </div>
                        <div class="form-group">
                          <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                          <div class="col-lg-10">
                            <textarea class="form-control" name="description"rows="3" id="editor">{$project.description}</textarea>
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
        <script type="text/javascript" src="/portfolio/portfolio.lt/js/projects/script.js"></script>
    </body>
</html>