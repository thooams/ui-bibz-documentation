const { environment } = require('@rails/webpacker')

// TODO: Maybe remove ??
const webpack = require('webpack')
environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery',
        jquery: 'jquery/src/jquery'
    })
)
module.exports = environment
environment.loaders.delete('nodeModules')
