$ ->

  $('#contenido .grande, #contenedor_texto').hide()

  $('a.secciones').click (e) ->
    e.preventDefault()
    $('#contenido .texto, #contenido .grande, #contenedor_texto').hide()
    titulo = $(this).data('titulo')
    unless ['mapa', 'regalo', 'texto-regalo'].indexOf(titulo) != -1
      $("#contenido .texto[data-titulo='#{titulo}']").show()
      $('#contenedor_texto').show()
    else
      $('#'+titulo).show()

  $('#titulo').click (e) ->
    e.preventDefault()
    $('#contenedor_texto, #mapa').hide()

  links_reserva = $('a.reservar')

  links_reserva.click (e) ->
    e.preventDefault()
    $this = $(this)
    return if $this.hasClass('reservado')
    $.post($this.attr('href'), {_method:'PUT'}).
    success((e) ->
      $this.addClass('por-ti')
      links_reserva.addClass('reservado')
      links_reserva.text('No disponible')
      $this.text('Reservado')
      alert('¡Reservaste el regalo!')).
    error((e) ->
      $this.text('No disponible')
      $this.addClass('reservado')
      alert(e.responseText))
