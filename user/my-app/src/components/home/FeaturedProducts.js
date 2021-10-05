import React, { Component, Fragment } from 'react'
import {Container,Col,Row,Card} from 'react-bootstrap';

export default class FeaturedProducts extends Component {
    render() {
        return (
            <Fragment>
                <Container>
                    <Row>
                        <Col xl={2} lg={2} md={2} sm={4} xs={6}>
                            <Card className="image-box">
                                <img src="https://static-01.daraz.com.bd/p/66ec675d545eeabf8eb04415318d3db5.jpg_400x400q75-product.jpg"/>
                                <Card.Body>

                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        )
    }
}
