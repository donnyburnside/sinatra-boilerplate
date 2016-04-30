//
// Gulp setup
//

var gulp            = require('gulp'),
    concat          = require('gulp-concat'),
    jshint          = require('gulp-jshint'),
    notify          = require('gulp-notify'),
    plumber         = require('gulp-plumber'),
    sequence        = require('gulp-sequence'),
    uglify          = require('gulp-uglify'),
    sourcemaps      = require('gulp-sourcemaps'),
    browserSync     = require('browser-sync').create();

//
// PostCSS stuff
//

var postcss         = require('gulp-postcss'),
    advancedvars    = require('postcss-advanced-variables'),
    autoprefixer    = require('autoprefixer'),
    color           = require('postcss-color-function'),
    conditionals    = require('postcss-conditionals'),
    csswring        = require('csswring'),
    extend          = require('postcss-extend'),
    mathjs          = require('postcss-mathjs'),
    mixins          = require('postcss-mixins'),
    nested          = require('postcss-nested'),
    partialimport   = require('postcss-partial-import');

//
// CSS (the order is important!!!)
//

gulp.task('css', function(){
  var processors = [
    partialimport,
    extend,
    mixins,
    advancedvars,
    nested,
    conditionals,
    mathjs,
    color,
    autoprefixer({ browsers: ['last 2 versions', '> 5%'] }),
    csswring
  ];
  return gulp.src('./src/css/style.css')
    .pipe(plumber(plumberErrorHandler))
    .pipe(sourcemaps.init())
    .pipe(postcss(processors))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('./public/css'))
    .pipe(browserSync.stream());
});

//
// JavaScript
//

gulp.task('js', function(){
  return gulp.src('./src/js/*.js')
    .pipe(plumber(plumberErrorHandler))
    .pipe(sourcemaps.init())
    .pipe(concat('main.js'))
    .pipe(uglify())
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('./public/js'))
    .pipe(browserSync.stream());
});

//
// BrowserSync
//

gulp.task('server', ['js'], function () {

  // Serve files via Hugo
  browserSync.init({
    proxy: "localhost:9292",
    ghostMode: {
      clicks: true,
      scroll: true,
      forms: {
        submit: true,
        inputs: true,
        toggles: true
      }
    }
  });

  // Add browserSync.reload to the tasks array to make all browsers reload after
  // tasks have been completed
  gulp.watch('src/js/*.js', ['js-watch']);

})

//
// Watch
//

gulp.task('watcher', function() {

  gulp.watch('src/css/**/*.css', ['css']);
  gulp.watch('src/js/*.js', ['js']);

});

//
// Error Handling
//

var plumberErrorHandler = { errorHandler: notify.onError({
  title: 'Gulp',
  message: 'Error: <%= error.message %>'
  })
};

//
// Default Gulp Task
//

gulp.task('default', sequence('css', 'js'));
gulp.task('watch', sequence('css', 'js', 'watcher'));
gulp.task('serve', sequence('css', 'js', 'watcher', 'server'));
gulp.task('deploy', sequence('css', 'js'));
