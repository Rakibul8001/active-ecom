import React, { Component } from 'react';
import {Col} from 'react-bootstrap';
import ApiURL from '../../api/ApiURL';
import axios from 'axios';

export default class ReviewList extends Component {

  constructor(){
    super();
    this.state={
      reviewData:[]
    }
  }

  componentDidMount(){
    let code = this.props.product_code
    axios.get(ApiURL.ReviewList(code)).then(res=>{
      this.setState({reviewData:res.data});
    }).catch(err=>{

    });
  }

  render() {

    const MyReview = this.state.reviewData;

    if(MyReview.length > 0){
    const viewReview = MyReview.map((reviewList,i)=>{
        return (
          <Col key={i.toString()}>
                <p className=" p-0 m-0" ><span className="Review-Title">{reviewList.reviewer_name}</span> <span className="text-success"><i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> </span> </p>
                <p>{reviewList.reviewer_comment}</p>
          </Col>
        );
    });

    return (
      <div>
        <h6 className="mt-2">REVIEWS</h6>
        {viewReview}
      </div>
    );

    }
    else{

      return (
        <div>
          <h6 className="mt-2">REVIEWS</h6>
        </div>
      );

    }
  }
}
