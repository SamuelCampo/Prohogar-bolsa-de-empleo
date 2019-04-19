(function($){
    $(function(){
        $('body')
            .on('change', '[data-button-action]', function(event){
                var $el = $(this),
                    $butons = $($el.data('button-action')),
                    text = $.trim($el.find("option:selected").text())
                ;
                $butons.each(function(){
                    var isDisabled = $.trim($(this).text()) != text;
                    $(this).prop('disabled', isDisabled);
                    if (isDisabled) {
                        $($(this).data('target'))
                            .find('[type=text], [type=number]')
                            .val('')
                        ;
                    }
                });
            })
            .on('change', '[data-provide=datepicker]', function(event){
                var dateInit = new Date($('[data-date-role=init]').val()),
                    dateEnd = new Date($('[data-date-role=end]').val()),
                    isValid = true
                ;
                switch ($(this).data('date-role')) {
                    case 'init':
                        if (dateEnd&&dateInit>dateEnd) {
                            isValid = false;
                            alert('La fecha de inicio no puede ser mayor que la fecha final');
                        }
                        break;
                    case 'end':
                        if (dateInit&&dateEnd<dateInit) {
                            isValid = false;
                            alert('La fecha de final no puede ser menor que la fecha inicio');
                        }
                        break;
                }

                if (!isValid) {
                    $(this).val('');
                }
            })
        ;
        $('[data-button-action]').change();
    });
})(jQuery);
