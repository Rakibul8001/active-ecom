import React, { Component } from 'react'
import { Button } from 'react-bootstrap';

export default class App extends Component {
  render() {
    return (
      <div>
        <Button variant="primary">Primary</Button>
        <Button variant="primary"><i className="fa fa-home"></i></Button>
      </div>
    )
  }
}
