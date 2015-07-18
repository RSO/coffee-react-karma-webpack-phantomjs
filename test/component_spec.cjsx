rewire = require 'rewire'
mockComponent = require './support/mock_component'
React = require 'react/addons'
TestUtils = React.addons.TestUtils

Component = rewire '../component'
mockComponent Component, 'Link'

describe 'Component', ->
  it 'mocks the Link component', ->
    component = TestUtils.renderIntoDocument <Component />
    expect(true).to.eq true

    expect(TestUtils.scryRenderedDOMComponentsWithTag(component, 'a')).to.have.length 0
    TestUtils.findRenderedDOMComponentWithClass component, 'spec-mock'

