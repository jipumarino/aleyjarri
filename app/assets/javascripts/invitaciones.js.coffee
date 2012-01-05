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

  $('a.reservar').click (e) ->
    e.preventDefault()
    $this = $(this)
    return if $this.hasClass('reservado')
    $.post($this.attr('href'), {_method:'PUT'}).
    success((e) ->
      $this.text('Reservado')
      $this.addClass('reservado por-ti')
      alert('¡Reservaste el regalo!')).
    error((e) ->
      $this.text('No disponible')
      $this.addClass('reservado')
      alert('¡El regalo ya fue reservado!'))
      
      