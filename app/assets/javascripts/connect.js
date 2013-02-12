jQuery(document).ready(function(){

    jQuery('#select_all').click(function(){
        if (jQuery(this).attr('checked'))
        {
            jQuery('.user_checkbox').attr('checked','checked');
        }
        else
        {
            jQuery('.user_checkbox').attr('checked', false);
        }
    });

    jQuery(".user_checkbox").click(function(){
        jQuery('#select_all').attr('checked', false);
    });

    jQuery("#group_action").change(function(){
        if ($(this).val() == 'delete') jQuery('#users').submit();
    });
});
