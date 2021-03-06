
import React, {Component,Fragment} from 'react';
import {Container,Row,Col,Card} from 'react-bootstrap';
import {Link} from "react-router-dom";

export default class ListByCategory extends Component {
  render() {

    const myList = this.props.ProductData;

    const ListView = myList.map((productList,i)=>{
        if(productList.special_price === 'NA'){
            return <Col className="p-1" key={i.toString()} xl={2} lg={2} md={2} sm={4} xs={6} >
            <Link to={"/productDetails/"+productList.product_code}>
            <Card className="card w-100 image-box ">
                <img src={productList.image} alt={productList.title}/>
                <Card.Body>
                    <h5 className="product-name-on-card">{productList.title}</h5>
                    <p className="product-price-on-card">Price: {productList.price}</p>
                </Card.Body>
            </Card>
            </Link>

        </Col>
        }
        else{
            return <Col className="p-1" key={i.toString()} xl={2} lg={2} md={2} sm={4} xs={6} >
            <Link to={"/productDetails/"+productList.product_code}>
            <Card className="card w-100 image-box ">
                <img src={productList.image}/>
                <Card.Body>
                    <h5 className="product-name-on-card">{productList.title}</h5>
                    <p className="product-price-on-card">
                        Price: <strike className="text-secondary">{productList.price}</strike> {productList.special_price}
                    </p>
                </Card.Body>
            </Card>
            </Link>

        </Col>
        }

    });


    return <Fragment>
            <Container className="text-center BetweenTwoSection" fluid={true}>
                <h4 className="section-title pt-5">{this.props.Category}</h4>
                <Row>
                    {ListView}
                </Row>
            </Container>

        </Fragment>
  }
}
