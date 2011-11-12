$ ->

  $('#mapa, #contenedor_texto').hide()

  $('#barra a').click (e) ->
    e.preventDefault()
    $('#contenido .texto, #mapa, #contenedor_texto').hide()
    titulo = $(this).data('titulo')
    unless titulo == 'mapa'
      $("#contenido .texto[data-titulo='#{titulo}']").show()
      $('#contenedor_texto').show()
    else
      $('#mapa').show()

  $('#titulo').click (e) ->
    e.preventDefault()
    $('#contenedor_texto ').hide()
