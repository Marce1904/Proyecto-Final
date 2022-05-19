import React from "react";
import "../../styles/components/layout/Header.css";

const Header = (props) => {

    return(
        <header>
            <div className= "Holder">
                <div className= "logo">
                    <img src="images/header/cabecera.png" width= "200" alt= "Transportes X"/>
                    <h1 style={{color: "#714242"}}>Lovely Skin</h1><h2 style={{color: "#714242"}}>Venta de Productos Faciales y Corporales</h2>
                    
                </div>       
                
            </div>

        </header>

    );
}

export default Header;
