import React, {Component,Fragment} from 'react';
import {Breadcrumb,Container,Row,Col,Card} from 'react-bootstrap';
import {Link} from "react-router-dom";

export default class SearchList extends Component {
  render() {

    const myList = this.props.ProductData;
    const SearchKey = this.props.SearchKey;

    const ListView = myList.map((productList,i)=>{
        if(productList.special_price == 'NA'){
            return <Col className="p-1" key={i.toString()} xl={2} lg={2} md={2} sm={4} xs={6} >
            <Link to={"/productDetails/"+productList.product_code}>
            <Card className="card w-100 image-box ">
                <img src={productList.image}/>
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
      <Container className="text-center TopSection" fluid={true}>
          {/* Breadcrumb start */}
          <Breadcrumb>
              <Breadcrumb.Item> <Link to="/">Home</Link> </Breadcrumb.Item>
              <Breadcrumb.Item> <Link to={"/productListBySearch/"+SearchKey }>Search Result:{SearchKey}</Link> </Breadcrumb.Item>
          </Breadcrumb>
          {/* Breadcrumb end */}
          <Row>
              {ListView}
          </Row>
      </Container>

    </Fragment>
  }
}
