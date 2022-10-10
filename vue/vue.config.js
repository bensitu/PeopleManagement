const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  //服务器地址
  // devServer:{
  //   proxy:'http://localhost:8090'
  // }

  devServer:{
    proxy:{
      '/api': {
        target: 'http://localhost:8090',
        pathRewrite: {'^/api': ''},
        ws:true,
        changeOrigin: true
      }
    }
  }
})
