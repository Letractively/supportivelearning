(function($){
    $.fn.switcher = function(options){
        var def_cookie;
        $('link').each(function(){	
            if($(this).attr('title') != undefined){
                if ($(this).attr('title').length != 0){
                    def_cookie = $(this).attr('title');
                    return false;
                }	
            }
        });
        var cookie = jQuery.cookie('jquery_default_stylesheet');
        if(cookie == null){
            chooser(this,def_cookie);
        }
        else{
            chooser(this,cookie);
        }
        clicker(this);
    };

    function clicker($obj){
        $('#' + $obj.attr('id') + ' a').click(function(){
            var target = $(this).attr('href').substring(1,$(this).attr('href').length);
            chooser($obj,target);
            return false;
        });	
    };

    function chooser($obj,$target){
        $('link').each(function(){	
            if($(this).attr('title') != undefined){
                if ($(this).attr('title').length != 0) {
                    $stylesheet = $(this);
                    $stylesheet.attr('disabled', true);
                    $('#' + $obj.attr('id') + ' a[href!=#' + $target + ']').removeClass('on');
                    if ($stylesheet.attr('title') == $target) {
                        $stylesheet.attr('disabled', false);
                        $.cookie('jquery_default_stylesheet', $target, {
                            expires: 365,
                            path: '/'
                        });
                        $('#' + $obj.attr('id') + ' a[href=#' + $target + ']').addClass("on");
                    }
                }
            }
        });

    };
})(jQuery);