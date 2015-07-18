React = require 'react/addons'
TestUtils = React.addons.TestUtils
Link = require '../src/link'

describe 'Link', ->
  it 'renders an a tag', ->
    component = TestUtils.renderIntoDocument <Link />
    TestUtils.findRenderedDOMComponentWithTag component, 'a'
