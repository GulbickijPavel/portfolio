{include file='../../header.tpl'}
        <div class="container">
        <div class="main" id="main">
            <div class="jumbotron">
                {$successmsg}
                <form class="form-horizontal" action="save.php?sectionname=home" method="post">
                    <fieldset>
                        <legend>{translation langEn="Home"}<!--{translation langEn="Control"}/{translation langEn="Change"}--></legend>
<!--
                        <div class="form-group">
                          <label class="col-lg-2 control-label">{translation langEn="Title"}</label>
                          <div class="col-lg-10">
                            <input type="text" class="form-control" value="{$section.sectionname}" name="sectionname" id="" placeholder="">
                          </div>
                        </div>
-->
                        <div class="form-group">
                          <label for="textArea" class="col-lg-2 control-label">{translation langEn="Description"}</label>
                          <div class="col-lg-10">
                            <textarea maxlength="5000" class="form-control" name="startdescription"rows="3" id="editor"> {$start.startinfo}</textarea>
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
        <script>initSample();</script>
    </body>
</html>