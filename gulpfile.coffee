'use strict'

gulp = require('gulp')

gulp.task 'scripts', ->
  webpack = require('webpack-stream')
  gulp.src('./scripts')
    .pipe webpack(require('./webpack.conf'))
    .pipe gulp.dest('public/js')

gulp.task 'watch', () ->
  gulp.watch(['scripts/*', 'scripts/**/*'], ['scripts'])

gulp.task 'build', ['scripts']
