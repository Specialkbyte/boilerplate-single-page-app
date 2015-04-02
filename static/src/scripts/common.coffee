requirejs.config
  waitSeconds: 15
  baseUrl: '/build/scripts/app'
  paths:
    'jquery': '../../../components/jquery/dist/jquery',
    'underscore': '../../../components/underscore/underscore'
    'backbone': '../../../components/backbone/backbone'
    'moment': '../../../components/moment/moment'
    'jade': '../../../components/jade/runtime'
    'raven': '../../../components/raven-js/dist/raven'
    'mixen': '../../../components/mixen/mixen.min'
    'modernizr': '../../../components/modernizr/modernizr'
    'foundation': '../../../components/bower-foundation/js/foundation/foundation'
    'foundation.tabs': '../../../components/bower-foundation/js/foundation/foundation.tab'
    'foundation.topbar': '../../../components/bower-foundation/js/foundation/foundation.topbar'
    'foundation.tooltip': '../../../components/bower-foundation/js/foundation/foundation.tooltip'
    'foundation.alert': '../../../components/bower-foundation/js/foundation/foundation.alert'
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

    raven:
      exports: 'Raven'

    foundation:
      deps: [
        'jquery'
      ]
      exports: 'Foundation'

    'foundation.alert':
      deps: ['foundation', 'modernizr']

    'foundation.topbar':
      deps: ['foundation']

    'foundation.tabs':
      deps: ['foundation']

    'foundation.tooltip':
      deps: ['foundation']