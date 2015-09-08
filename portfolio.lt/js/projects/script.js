$(document).ready(function(){
initSample();
   $('#img1-url').change( function(event) {
    var tmppath = URL.createObjectURL(event.target.files[0]),
        imagename = $("#img-name").val();;
        $("#img1-example").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
        $("#disp_tmp_path").val(tmppath);
    });
    $('#img2-url').change( function(event) {
    var tmppath = URL.createObjectURL(event.target.files[0]),
        imagename = $("#img-name").val();;
        $("#img2-example").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
        $("#disp_tmp_path").val(tmppath);
    });
    $('#img3-url').change( function(event) {
    var tmppath = URL.createObjectURL(event.target.files[0]),
        imagename = $("#img-name").val();;
        $("#img3-example").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
        $("#disp_tmp_path").val(tmppath);
    });
    var combo = $('#combox').magicSuggest({
        placeholder: 'Pasirinkite...',
        allowFreeEntries: false,
        data: '../../php/combo.php?section=projects',
        valueField: 'projectid',
        displayField: 'projectname',
        maxSelection: 1
    });
    $(combo).on('selectionchange', function(e,m){
        var id = JSON.parse(this.getValue()),  
            request =$.ajax({
            method: "POST",
            url:"../../php/actions/change.php",
            data: { sectionname: "proj", projectid: id}
        });
        request.success(function(data) {
            var projectdesc = $(data).find('#editor').val(),
                projectname = $(data).find('#project-name').val(),
                projectid = $(data).find('#project-id').val(),
                projectimg1 = $(data).find('#projectimg1').val(),
                projectimg2 = $(data).find('#projectimg2').val(),
                projectimg3 = $(data).find('#projectimg3').val(),
                projectimage1 = $(data).find('#project-image1').attr('src'),
                projectimage2 = $(data).find('#project-image2').attr('src'),
                projectimage3 = $(data).find('#project-image3').attr('src');
            CKEDITOR.instances['editor'].setData(projectdesc);
            $('#project-id').val(projectid);
            $('#project-name').val(projectname);
            $('#projectimg1').val(projectimg1);
            $('#projectimg2').val(projectimg2);
            $('#projectimg3').val(projectimg3);
            $('#project-image1').attr( "src", projectimage1);
            $('#project-image2').attr( "src", projectimage2);
            $('#project-image3').attr( "src", projectimage3);
        });

        request.fail(function( jqXHR, textStatus ) {
            alert( "Request failed: " + textStatus );
        });
    });
     $("#del-button").confirm({
        title:"Šalinimo patvirtinimas",
        text:'Ar Jūs tikrai norite pašalinti įrašą <strong>'+combo.getValue()+'</strong>',
        confirm: function(button) {
            var projectid = $("#project-id").val();
            var projectname = $("#project-name").val();
                request = $.ajax({
                    method: "POST",                    
                    url: "../../php/actions/delete.php",
                    data: { itemid: projectid, table: "projects", itemidname: "projectid" }
            });
            request.success(function(data) {
                $('.alert-box').append('Įrašas <strong> '+projectname+' </strong> buvo sekmingai pašalintas!');
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