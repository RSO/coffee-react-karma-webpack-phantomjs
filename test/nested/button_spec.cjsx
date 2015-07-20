React = require 'react/addons'
TestUtils = React.addons.TestUtils
Button = require '../../src/nested/button'

describe 'Button', ->
  it 'renders children as textContent', ->
    component = TestUtils.renderIntoDocument <Button>Hi</Button>
    expect(component.getDOMNode().textContent).to.equal 'Hi'
