$(document).ready(function(){
    var langEn = 'en',
        langLt = 'lt',
        langRu = 'ru';
    initSample(langEn);
    initSample(langLt);
    initSample(langRu);
    $('#img-url').change( function(event) {
    var tmppath = URL.createObjectURL(event.target.files[0]),
        imagename = $("#img-name").val();;
        $("#img-example").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
        $("#disp_tmp_path").val(tmppath);
    });
   /* var langToDisplay = $('[name=langRadio]:checked').val(),*/
        
   var skillCombo = $('#skill-box').magicSuggest({
        placeholder: 'Pasirinkite...',
        allowFreeEntries: false,
        value: 1,
        data: '../../php/combo.php?section=skills&box=skilllist',
        valueField: 'skillid',
        cls: 'col-lg-10',
        displayField: 'skillname',
        maxSelection: 1
    });
    $(skillCombo).on("load", function(){
        var css = "css";
        //skillCombo.setValue([css]);
    });
  /* $("input:radio[name=langRadio]").click(function() {
        var value = $(this).val(),  
            request =$.ajax({
            method: "POST",
            url:"../../php/combo.php",
            data: { section: "skills", selectedLang: value }
        });
        request.success(function(data) {
            
           console.log(JSON.parse(data));
           console.log($(combo)[0]);
            
            $(combo)[0].setData(JSON.parse(data));
            //$(combo)[0].setData(data);
        });

        request.fail(function( jqXHR, textStatus ) {
          alert( "Request failed: " + textStatus );
        });
    });*/
    $(skillCombo).on('selectionchange', function(e,m){
        var id = JSON.parse(this.getValue()),  
            request =$.ajax({
            method: "POST",
            url:"../../php/actions/change.php",
            data: { sectionname: "skil", skillid: id }
        });
        request.success(function(data) {
            var imageurl = $(data).find('#img-url').val(),
                skilldescEn = $(data).find('#editor-en').val(),
                skilldescLt = $(data).find('#editor-lt').val(),
                skilldescRu = $(data).find('#editor-ru').val(),
                skillname = $(data).find('#skill-name-en').val(),
                skillid = $(data).find('#skill-id').val(),
                skillimage = $(data).find('#skill-image').attr('src'),
                uploadedimg = $(data).find('#uploadedimage-id').val();
            console.log(data);
            $('#img-url').val(imageurl);
            CKEDITOR.instances['editor-en'].setData(skilldescEn);
            CKEDITOR.instances['editor-lt'].setData(skilldescLt);
            CKEDITOR.instances['editor-ru'].setData(skilldescRu);
            $('#skill-id').val(skillid);
            $('#skill-name-en').val(skillname);
            $('#uploadedimage-id').val(uploadedimg);
            $('#skill-image').attr( "src", skillimage);
        });

        request.fail(function( jqXHR, textStatus ) {
          alert( "Request failed: " + textStatus );
        });
    });
   
 /*  $(skillCombo).on("load", function(){
        var css = "css";
        combo.setValue([css]);
    });*/
     var knowledgeCombo = $('#knowledge-box').magicSuggest({
        placeholder: 'Pasirinkite...',
        allowFreeEntries: false,
        value: 1,
        data: '../../php/combo.php?section=skills&box=knowledge',
        valueField: 'id',
        cls: 'col-lg-10',
        displayField: 'langEn',
        maxSelection: 1
    });
     $("#del-button").confirm({
        title:"Šalinimo patvirtinimas",
        text:'Ar Jūs tikrai norite pašalinti įrašą <strong>'+skillCombo.getValue()+'</strong>',
        confirm: function(button) {
            var skillid = $("#skill-id").val();
            var skillname = $("#skill-name").val();
                request = $.ajax({
                    method: "POST",                    
                    url: "../../php/actions/delete.php",
                    data: { itemid: skillid, table: "skills", itemidname: "skillid" }
            });
            request.success(function(data) {
                $('.alert-box').append('Įrašas <strong> '+skillname+' </strong> buvo sekmingai pašalintas!');
                $('.alert-box').toggleClass('open');
                window.setTimeout(function(){ location.reload() },3000);
            });
            request.fail(function( jqXHR, textStatus ) {
              alert( "Request failed: " + textStatus );
            });
        },
        cancel: function(button) {

        },
        confirmButton: "Pašalinti",
        cancelButton: "Atšaukti"
    });
});