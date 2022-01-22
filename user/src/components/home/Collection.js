import axios from 'axios';
import React, {Component,Fragment} from 'react';
import {Container,Row,Col,Card} from 'react-bootstrap';
import {Link} from "react-router-dom";
import ApiURL from '../../api/ApiURL';
import SpecialCollectionPlaceholder from "../placeholder/SpecialCollectionPlaceholder";

class Collection extends Component {
    constructor(){
        super();
        this.state = {
            ProductData:[],
            isLoading:"",
            MainDiv:"d-none"
        }
    }

    componentDidMount(){
        axios.get(ApiURL.productListByRemark("COLLECTION")).then(response =>{
            this.setState({ProductData:response.data,isLoading:"d-none", MainDiv:" "});
        }).catch(error=>{

        });
    }

    render() {

        const myList = this.state.ProductData;

        const ListView = myList.map((productList,i)=>{
            if(productList.special_price == 'NA'){
                return <Col className="p-1" key={i.toString()} xl={2} lg={2} md={2} sm={4} xs={6} >
                <Link to={"productDetails/"+productList.product_code}>
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
                <Link to={"productDetails/"+productList.product_code}>
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
                    <SpecialCollectionPlaceholder isLoading={this.state.isLoading}/>

                    <div className={this.state.MainDiv}>
                    <Container className="text-center BetweenTwoSection" fluid={true}>
                        <h4 className="section-title">SPECIAL COLLECTION PRODUCTS</h4>
                        <h6 className="section-sub-title pb-3">Some Of Our Exclusive Collection, You May Like</h6>
                        <Row>
                            {ListView}
                        </Row>
                    </Container>
                    </div>

            </Fragment>
        );
    }
}

export default Collection;