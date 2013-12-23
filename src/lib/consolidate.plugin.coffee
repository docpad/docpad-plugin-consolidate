# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class ConsolidatePlugin extends BasePlugin
    # Name
    name: 'consolidate'

    # Configuration
    config:
      # Enable all available template engines by default.
      atpl: true
      dust: true
      dot: true
      eco: true
      ect: true
      ejs: true
      haml: true
      "haml-coffee": true
      handlebars: true
      hogan: true
      jade: true
      jazz: true
      jqtpl: true
      just: true
      liquor: true
      lodash: true
      mustache: true
      qejs: true
      ractive: true
      swig: true
      templayed: true
      toffee: true
      underscore: true
      walrus: true

    # Constructor: true
    constructor: ->
      # Prepare
      super

      # Require Consolidate.js
      @consolidate = require('consolidate')

      # Chain
      @

    # Called per document, for each extension conversion.
    render: (opts, next) ->
      # Prepare.
      {inExtension, templateData, content} = opts
      config = @getConfig()

      # Ensure we are to act with the given template engine.
      if config[inExtension] or false
        # Render using the given template engine.
        @consolidate[inExtension].render content, templateData, (err, output) ->
          return next(err) if err
          opts.content = output

      # Done, return back to DocPad
      return next()
