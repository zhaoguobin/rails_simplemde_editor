simplemdes = []

$(document).on 'turbolinks:before-cache', ->
  simplemdes.forEach (simplemde) ->
    simplemde.toTextArea()
    simplemde = null
  simplemdes = []

$(document).on 'turbolinks:load', ->
  inlineAttachmentConfig =
    uploadUrl: '/simplemde/upload.json',
    extraHeaders:
      'X-CSRF-Token': $('meta[name=csrf-token]').attr("content")

  $('.rails_simplemde').each ->
    simplemde = new SimpleMDE({ element: this, forceSync: true })
    configs =
      extraParams:
        owner_type: $(this).data('ownerType') || '',
        owner_id: $(this).data('ownerId') || ''
    
    configs = Object.assign(configs, inlineAttachmentConfig)
    inlineAttachment.editors.codemirror4.attach(simplemde.codemirror, configs)
    simplemdes.push(simplemde)
