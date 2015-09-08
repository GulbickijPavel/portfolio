$(document).ready(function(){
    $('article#slide0-desc.project-description').toggleClass('open');
    $('.sub-menu-item').click(function(){
        //console.log("click");
        $('.sub-sub-menu-item').toggleClass('open');
    
    });
    /*********** skills ************/
     $('.skill-image').click(function(){
        var id = $(this).attr('id');
        $('.skill-description.open').removeClass("open");
        $('.skill-image.active').removeClass("active");
        $('article#'+id+'-desc'+'.skill-description').toggleClass('open');
        $('img#'+id+'.skill-image').toggleClass('active');
    });
    /*************** Menu *****************/
    $(".menu_item").on("click", function(e) {
        e.preventDefault();
        var scrollTarget = $(this).attr('href');
       // console.log(scrollTarget);
        $(scrollTarget).velocity("scroll", {
            duration: 900
        });
        $("#navbar-main").removeClass("in");
    });
    /*************** slider ************n**/
    $('.bxslider').bxSlider();

    /**************** Vortex ****************/
     $('.vortex-image').on("click", function(e) {
        var id = $(this).attr('id');
      // console.log(id);
        
        $("#skills").velocity("scroll", {
            duration: 900
        });
        $('.skill-description.open').removeClass("open");
        $('.skill-image.active').removeClass("active");
        $('article#'+id+'-desc'+'.skill-description').toggleClass('open');
        $('img#'+id+'.skill-image').toggleClass('active');            
    });
     $('#vortex').vortex({
        initialPosition: 270,
        speed: 450
     });
    $('.vortex-image').mouseover(function(){
        $('#vortex').data('vortex').stop();
    }).mouseout(function(){
        $('#vortex').data('vortex').start()});
    $(window).resize(function(e){
       $("#vortex").data('vortex').stop();
        $("#vortex *").removeAttr('style');
        $("#vortex").removeData();
         $('#vortex').vortex({
            initialPosition: 270,
            speed: 450
         });
    });
    /************** Slider ***********/
        $(function() {
            $('.banner').unslider({
                speed: 500,             
                delay: 3000,              
                complete: function() {},  
                keys: true,              
                dots: true,              
                fluid: true
            });
        });
        var unslider = $('.banner').unslider();
        $('.unslider-arrow').click(function() {
            var fn = this.className.split(' ')[1];
            //  Either do unslider.data('unslider').next() or .prev() depending on the className
            unslider.data('unslider')[fn]();
        });
    /************** window control *****************/
    $('.control').click(function(url, title, w, h){
          //  console.log(this.id.length);
        var smth = this.id.slice(-this.id.length, -7);
       // console.log(smth);
          var url = '/portfolio/portfolio.lt/php/actions/change.php?sectionname='+smth+'',
              title = 'Change',
          left = (screen.width/2)-(w/2),
          top = (screen.height/2)-(h/2);
      return window.open(url, title, 'width=400,height=350');
    });
    $('#select').on("change", function(e){
      //  console.log(this);
    });
    /******** image upload buton ***********/
    $('.img-upload-btn').click( function(event){
        $('.image-upload').toggleClass('open');
    });
    /******************* language buttons ************/
  /*  $('.lang-img').click( function(event){
        console.log(this.id);
    });*/
    /************** settings window *****************/
    $('.settings-img').click( function(url, title, w, h){
          var url = '/portfolio/portfolio.lt/php/settings.php',
              title = 'Settings',
              side = (screen.width/2)-(w/2),
              tops = (screen.height/2)-(h/2);
  return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+tops+', left='+side);
    });
});
