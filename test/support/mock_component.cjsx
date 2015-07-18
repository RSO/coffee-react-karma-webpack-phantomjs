React = require 'react/addons'

ReactMock = React.createClass
  render: ->
    <div className="spec-mock">
      {@props.children}
    </div>

module.exports = (original_component, component_name) ->
  original_component.__set__ component_name, ReactMock

