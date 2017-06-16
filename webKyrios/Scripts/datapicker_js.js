        $(document)
            .ready(function () {
                $("#MainContent_txtdataNasc")
                    .datepicker({
                        format: 'dd/mm/yyyy',
                        language: 'pt-BR',
                        autoclose: true
                    });

                $("#MainContent_txtdataNasc").mask("99/99/9999");
            });