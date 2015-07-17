rewire = require 'rewire'
React = require 'react/addons'
TestUtils = React.addons.TestUtils
ReactMock = require './support/react_mock'

Component = rewire '../component'
Component.__set__ 'Link', ReactMock

describe 'Component', ->
  it 'mocks the Link component', ->
    component = TestUtils.renderIntoDocument <Component />
    expect(true).to.eq true

    expect(TestUtils.scryRenderedDOMComponentsWithTag(component, 'a')).to.have.length 0
    TestUtils.findRenderedDOMComponentWithClass component, 'spec-mock'

