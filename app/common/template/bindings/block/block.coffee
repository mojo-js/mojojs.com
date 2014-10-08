pc = require "paperclip"
bindable = require "bindable"

class BlockBinding extends pc.BaseBlockBinding

  ###
  ###

  _onChange: (value) ->
    @_tpl?.dispose()
    @context.set "blocks.#{value}", (@_tpl = @contentTemplate.bind(@context)).render()
    console.log @contentTemplate.paper.toString()

  ###
  ###

  unbind: () ->
    @_tpl.dispose()
    super arguments...

module.exports = BlockBinding
