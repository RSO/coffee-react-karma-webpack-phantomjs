React = require 'react/addons'

module.exports = React.createClass
  render: ->
    <div className="spec-mock">
      {@props.children}
    </div>
