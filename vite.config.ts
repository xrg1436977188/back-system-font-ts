import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import {
	resolve
} from 'path'
import {
	createSvgIconsPlugin
} from 'vite-plugin-svg-icons'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue(),
  createSvgIconsPlugin({
  	iconDirs: [resolve(process.cwd(), 'src/assets/svg')],
  	symbolId: 'icon-[dir]-[name]',
  }),],
  server: {
  	port: 8080, //默认启动时的端口号
  	open: true, //自动打开默认浏览器
  	cors: true, //允许跨域
  },
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  }
})
