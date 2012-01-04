$ ->

  $('#contenido .grande, #contenedor_texto').hide()

  $('#barra a').click (e) ->
    e.preventDefault()
    $('#contenido .texto, #contenido .grande, #contenedor_texto').hide()
    titulo = $(this).data('titulo')
    unless ['mapa', 'regalo'].indexOf(titulo) != -1
      $("#contenido .texto[data-titulo='#{titulo}']").show()
      $('#contenedor_texto').show()
    else
      $('#'+titulo).show()

  $('#titulo').click (e) ->
    e.preventDefault()
    $('#contenedor_texto, #mapa').hide()
