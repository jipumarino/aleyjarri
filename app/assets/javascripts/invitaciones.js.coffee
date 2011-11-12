$ ->

  $('#contenedor_texto').hide()

  $('#barra a').click (e) ->
    e.preventDefault()
    $('#contenido .texto').hide()
    titulo = $(this).data('titulo')
    console.log titulo
    $("#contenido .texto[data-titulo='#{titulo}']").show()
    $('#contenedor_texto').show()
