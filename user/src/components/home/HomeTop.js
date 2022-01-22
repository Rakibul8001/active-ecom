import React, {Component,Fragment} from 'react';
import {Container,Row,Col} from "react-bootstrap";
import MegaMenu from "./MegaMenu";
import SliderHome from "./SliderHome";
import axios from 'axios';
import ApiURL from '../../api/ApiURL';

class HomeTop extends Component {
    constructor(){
        super();
        this.state={
            menuData:[],
            SliderData:[]
        }
    }

    componentDidMount(){
        axios.get(ApiURL.SendCategoryDetails).then(response=>{
            this.setState({menuData:response.data});
        }).catch(error=>{

        });

        // Slider Info
        axios.get(ApiURL.SendSliderInfo).then(response=> {
            this.setState({SliderData:response.data})
        }).catch(error=> {

        });
    }

    render() {
        return (
            <Fragment>
                <Container className="p-0 TopSection  overflow-hidden" fluid={true}>
                    <Row className="p-0 m-0 overflow-hidden">
                        <Col className="p-0 m-0 overflow-hidden" lg={3} md={3} sm={12}>
                                <MegaMenu data={this.state.menuData}/>
                        </Col>
                        <Col className="p-0 m-0 overflow-hidden" lg={9} md={9} sm={12}>
                                <SliderHome data={this.state.SliderData}/>
                        </Col>
                    </Row>
                </Container>
                
            </Fragment>
        );
    }
}

export default HomeTop;