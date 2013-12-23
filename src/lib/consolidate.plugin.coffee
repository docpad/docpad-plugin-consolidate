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

      # Require the CSS Minifier
      @consolidate = require('consolidate')

      # Chain
      @

    render: (opts, next) ->
      # Prepare.
      {inExtension, templateData, file, content} = opts
      config = @getConfig()

      if config[inExtension] or false
        @consolidate[inExtension].render content, templateData, (err, output) ->
          return next(err) if err
          opts.content = output

      # Done, return back to DocPad
      return next()
