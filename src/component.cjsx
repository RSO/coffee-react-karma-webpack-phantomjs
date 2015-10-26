React = require 'react/addons'
Link = require './link'

module.exports = React.createClass
  render: ->
    console.info "Component constants:", constants
    <div>
      Hallo
      <Link />
    </div>
