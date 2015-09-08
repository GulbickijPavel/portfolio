$(document).ready(function(){
initSample();
   var combo = $('#combox').magicSuggest({
        placeholder: 'Pasirinkite...',
        data: '../../php/combo.php?section=experience',
        valueField: 'experienceid',
        displayField: 'company',
        maxSelection: 1
    });
    $(combo).on('selectionchange', function(e,m){
        var id = JSON.parse(this.getValue()),  
            request =$.ajax({
            method: "POST",
            url:"../../php/actions/change.php",
            data: { sectionname: "expr", experienceid: id}
        });
        request.success(function(data) {
            var company = $(data).find('#company').val(),
                experience = $(data).find('#experience-id').val(),
                address = $(data).find('#address').val(),
                url = $(data).find('#url').val(),
                periodstart = $(data).find('#periodstart').val(),
                periodend = $(data).find('#periodend').val(),
                position = $(data).find('#position').val(),
                desc = $(data).find('#editor').val();
            $('#company').val(company);
            $('#experience-id').val(experience);
            $('#address').val(address);
            $('#url').val(url);
            $('#periodstart').val(periodstart);
            $('#periodend').val(periodend);
            $('#position').val(position);
            CKEDITOR.instances['editor'].setData(desc);
        });

        request.fail(function( jqXHR, textStatus ) {
            alert( "Request failed: " + textStatus );
        });
    });
    $("#del-button").confirm({
        title:"Šalinimo patvirtinimas",
        text:'Ar Jūs tikrai norite pašalinti įrašą <strong>'+combo.getValue()+'</strong>',
        confirm: function(button) {
            var experienceid = $("#experience-id").val(),
                company = $("#company").val();
                request = $.ajax({
                    method: "POST",                    
                    url: "../../php/actions/delete.php",
                    data: { itemid: experienceid, table: "experience", itemidname: "experienceid" }
            });
            request.success(function(data) {
                console.log(data);
                $('.alert-box').append('Įrašas <strong> '+company+' </strong> buvo sekmingai pašalintas!');
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