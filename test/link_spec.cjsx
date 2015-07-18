React = require 'react/addons'
TestUtils = React.addons.TestUtils
Link = require '../link'

describe 'Link', ->
  it 'renders an a tag', ->
    component = TestUtils.renderIntoDocument <Link />
    TestUtils.findRenderedDOMComponentWithTag component, 'a'
