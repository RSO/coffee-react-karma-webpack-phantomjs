React = require 'react/addons'

module.exports = React.createClass
  render: ->
    <div>
      {@props.children}
    </div>
