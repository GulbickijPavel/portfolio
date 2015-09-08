        <section class="jumbotron" id="contacts">
            <h2>{translation langEn="Contacts"}</h2>
            <hr>
            <form class="form-horizontal" action="/portfolio/portfolio.lt/php/contact.php" method="post">
              <fieldset>
                <legend>{translation langEn="Contact"} {translation langEn="Form"}</legend>
                <span class="help-block">{translation langEn="You can leave your contacts here. Reauired fields are marked with *."}</span>
                 <div class="form-group">
                  <label for="inputCompany" class="col-lg-2 control-label">{translation langEn="Company"} *</label>
                  <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputCompany"  placeholder="" name="company">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputSender" class="col-lg-2 control-label">{translation langEn="Name"},{translation langEn="Surname"}</label>
                  <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputSender"  placeholder="Vardenis, Pavardenis" name="nameSurname">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail" class="col-lg-2 control-label">{translation langEn="E-mail"} *</label>
                  <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputEmail"  placeholder="Email" name="email">
                  </div>
                </div>
                  <div class="form-group">
                  <label for="inputPhone" class="col-lg-2 control-label">{translation langEn="Contact phone"} *</label>
                  <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputPhone"  placeholder="+370 XXX XXXXX" name="phone">
                  </div>
                </div>
                <div class="form-group">
                  <label for="textArea" class="col-lg-2 control-label">{translation langEn="Comments"}</label>
                  <div class="col-lg-10">
                    <textarea class="form-control" rows="3" id="textArea"  name="comments"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-10 col-lg-offset-2">
                    <button type="reset" class="btn btn-default">{translation langEn="Cancel"}</button>
                    <button type="submit" class="btn btn-primary">{translation langEn="Submit"}</button>
                  </div>
                </div>
              </fieldset>
            </form>
        </section>
        </div>
    </div>