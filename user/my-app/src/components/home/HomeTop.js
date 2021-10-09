import React, { Component, Fragment } from 'react'
import { Col, Container, Row } from 'react-bootstrap'
import SliderHome from './SliderHome'
import MegaMenu from './MegaMenu'

export default class HomeTop extends Component {
    render() {
        return (
            <Fragment>
                <Container fluid={true} className="p-0 m-0 overflow-hidden">
                    <Row>
                        <Col lg={3} md={3} sm={12}>
                            <MegaMenu />
                        </Col>

                        <Col lg={9} md={9} sm={12}>
                            <SliderHome/>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}
