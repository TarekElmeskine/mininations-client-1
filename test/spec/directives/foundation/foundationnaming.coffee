'use strict'

describe 'Directive: foundationNaming', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<foundation-naming></foundation-naming>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the foundationNaming directive'
