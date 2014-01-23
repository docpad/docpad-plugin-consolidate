# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class ConsolidatePlugin extends BasePlugin
    # Name
    name: 'consolidate'

    # Constructor
    constructor: ->
      # Load Consolidate.js
      @consolidate = require('consolidate')

      # Build the config based on what template engines Consolidate has.
      for engine in Object.keys(@consolidate) when engine isnt 'clearCache'
        # Enable the template engine in the plugin configuration.
        @config[engine] = true

      # Prepare
      super

      # Chain
      @

    # Called per document, for each extension conversion.
    render: (opts, next) ->
      # Prepare.
      {inExtension, templateData, content} = opts
      config = @getConfig()

      # Ensure we are to act with the given template engine.
      if config[inExtension]? and config[inExtension] isnt false
        # Render using the given template engine.
        @consolidate[inExtension].render content, templateData, (err, output) ->
          return next(err) if err
          opts.content = output

      # Done, return back to DocPad
      return next()
