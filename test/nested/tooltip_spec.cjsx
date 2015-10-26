React = require 'react/addons'
TestUtils = React.addons.TestUtils
Tooltip = require '../../src/nested/tooltip'

describe 'Tooltip', ->
  it 'renders', ->
    component = TestUtils.renderIntoDocument <Tooltip>Hi</Tooltip>
