'use strict'

describe 'Controller: MainCtrl', ->

  beforeEach module 'mininationsApp'

  MainCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      # place here mocked dependencies
    }

  # it 'should attach a list of awesomeThings to the scope', ->
  #   expect(MainCtrl.awesomeThings.length).toBe 3
