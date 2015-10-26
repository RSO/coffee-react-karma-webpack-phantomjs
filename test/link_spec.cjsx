rewire = require 'rewire'
React = require 'react/addons'
TestUtils = React.addons.TestUtils
Link = rewire '../src/link'
Link.__set__ constants: 'set_in_link_spec'

describe 'Link', ->
  it 'renders an a tag', ->
    component = TestUtils.renderIntoDocument <Link />
