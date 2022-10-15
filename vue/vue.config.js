const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,

  devServer: {
    host: 'localhost', // can be overwritten by process.env.HOST
    port: 8080, // can be overwritten by process.env.PORT, if port is in use, a free one will be determined
    open: false,
    hot: true,
    proxy: {
      '/api': {
        target: 'http://localhost:8090',
        pathRewrite: { '^/api': '' },
        ws: true,
        changeOrigin: true,
      }
    }
  },

})
