rewire = require 'rewire'
mockComponent = require './support/mock_component'
React = require 'react/addons'
TestUtils = React.addons.TestUtils

Component = rewire '../src/component'
mockComponent Component, 'Link'
Component.__set__
  constants: 'set_in_components_spec'

describe 'Component', ->
  it 'mocks the Link component', ->
    component = TestUtils.renderIntoDocument <Component />
