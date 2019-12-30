var gulp          = require('gulp');
var browserSync   = require('browser-sync').create();
var $             = require('gulp-load-plugins')();
var autoprefixer  = require('autoprefixer');

var sassPaths = [
  'node_modules/foundation-sites/scss',
  'node_modules/motion-ui/src',
];

function sass() {
  return gulp.src('_scss/app.scss')
    .pipe($.sass({
      includePaths: sassPaths,
      outputStyle: 'compressed' // if css compressed **file size**
    })
      .on('error', $.sass.logError))
    .pipe($.postcss([
      autoprefixer({ browsers: ['last 2 versions', 'ie >= 9'] })
    ]))
    .pipe(gulp.dest('_site/assets/css'))
    .pipe(browserSync.stream());
};

function copyVendorFiles() {
  return gulp.src([
    'node_modules/jquery/dist/jquery.js',
    'node_modules/what-input/dist/what-input.js',
    'node_modules/foundation-sites/dist/js/foundation.js',
    'node_modules/foundation-sites/dist/js/foundation.js.map',
                  ] ,
                 {base: 'node_modules/'}
                 )
      .pipe(gulp.dest('_site/assets/vendor/'));
};

function serve() {
  browserSync.init({
    server: "./"
  });

  gulp.watch("_scss/*.scss", sass);
  gulp.watch("*.html").on('change', browserSync.reload);
}

gulp.task('vendor', copyVendorFiles);
gulp.task('sass', sass);
gulp.task('serve', gulp.series('sass', serve));
gulp.task('default', gulp.series('sass', serve));
gulp.task('build', gulp.series('sass', 'vendor'));
