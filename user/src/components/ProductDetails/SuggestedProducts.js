import React, {Component, Fragment} from 'react';
import {Container,Row,Col,Card} from "react-bootstrap";
import {Link} from "react-router-dom";
import ApiURL from '../../api/ApiURL';
import axios from 'axios';
class SuggestedProducts extends Component {

    constructor(){
        super();
        this.state={
            ProductData:[]
        }
    }

    componentDidMount() {
        let subcategory = this.props.subcategory;
        axios.get(ApiURL.similarProducts(subcategory)).then(response =>{
            this.setState({ProductData:response.data});
        }).catch(error=>{

        });
    }


    render() {

        const myList = this.state.ProductData;

        if(myList.length > 0){
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

            return (
                <Fragment>
                    <Container fluid={true} className="text-center BetweenTwoSection">
                        <h4 className="section-title">YOU MAY LIKE</h4>
                        <h6 className="section-sub-title pb-3">Some Of Our Exclusive Collection, You May Like</h6>
                        <Row>
                            {ListView}
                        </Row>
                    </Container>
    
                </Fragment>
            );


        }
        else{
            return (
                <Fragment>
    
                </Fragment>
            );
        }
    }
}

export default SuggestedProducts;