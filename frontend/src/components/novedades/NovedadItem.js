
import React from 'react';


const NovedadItem = (props) => {
    const{title, subtitle, imagen, body} = props;

    return (
        <div className='novedades'>
            <h1>{title}</h1>

            <h2 className="holder2">{subtitle}</h2>

            <img className="img" src= {imagen}/>

            <div className="holder2" dangerouslySetInnerHTML={{__html:body }}/>
            
            <hr />


        </div>
    );
}

export default NovedadItem;