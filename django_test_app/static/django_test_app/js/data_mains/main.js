requirejs.config({
    baseUrl: 'static/django_test_app/js/lib',
    paths: {
        scripts: '../scripts' // (name, value) here means (module name, module path)
    }
});

requirejs(['scripts/base']); // Loads (and thus executes) module 'base.js' in folder 'scripts'
