requirejs.config
  baseUrl: '/build/scripts/app'
  paths:
    'jquery': '../../../components/jquery/dist/jquery',
    'underscore': '../../../components/underscore/underscore'
    'backbone': '../../../components/backbone/backbone'
    'moment': '../../../components/moment/moment'
    'jade': '../../../components/jade/runtime'
    'mixen': '../../../components/mixen/mixen.min'
    'modernizr': '../../../components/modernizr/modernizr'
    'foundation': '../../../components/bower-foundation/js/foundation/foundation'
    'foundation.topbar': '../../../components/bower-foundation/js/foundation/foundation.topbar'
    'signet': '../../../components/signet/signet'
    'jade.templates': '../../templates/jade'

  shim:
    underscore:
      exports: '_'

    backbone:
      deps: [
        'jquery'
        'underscore'
      ]
      exports: 'Backbone'

    jade:
      deps: [
        'moment'
      ]

    foundation:
      deps: [
        'jquery'
      ]
      exports: 'Foundation'

    'foundation.topbar':
      deps: ['foundation']