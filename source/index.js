/* eslint class-methods-use-this:0 */
'use strict'

// External
const BasePlugin = require('docpad-baseplugin')
const consolidate = require('consolidate')

// Define Plugin
class ConsolidatePlugin extends BasePlugin {
	get name () {
		return 'consolidate'
	}

	get initialConfig () {
		// Build the config based on what template engines Consolidate has
		const initialConfig = {}
		Object.keys(consolidate).forEach(function (engine) {
			if (engine !== 'clearCache') {
				// Enable the template engine in the plugin configuration
				initialConfig[engine] = true
			}
		})
		return initialConfig
	}

	// Called per document, for each extension conversion
	render (opts, next) {
		// Prepare
		const { inExtension, templateData, content } = opts
		const config = this.getConfig()

		// Ensure we are to act with the given template engine
		if (config[inExtension] && config[inExtension] !== false) {
			// Render using the given template engine
			consolidate[inExtension].render(content, templateData, function (err, output) {
				if (err) return next(err)
				opts.content = output
				return next()
			})
		}
		else {
			return next()
		}
	}
}

module.exports = ConsolidatePlugin
