$(document).on 'turbolinks:load', ->
  $('.rails_simplemde').each ->
    new SimpleMDE({ element: this, forceSync: true })
