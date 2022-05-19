import React, { useState } from "react";
import axios from 'axios';
import "../styles/components/pages/contactoPage.css"


const ContactoPage =  (props) => {
   
   const initialForm = {
       nombre: '',
       email: '',
       telefono: '',
       mensaje: ''
   }
   
   const [sending, setSending] = useState(false);
   const [msg, setMsg] = useState('');
   const [formData, setFormData]= useState(initialForm);

   const handleChange = e => {
       const {name, value } = e.target;
       setFormData(oldData => ({
           ...oldData,
           [name]: value 
       }));
   }

   const handleSubmit = async e => {
       e.preventDefault();
       setMsg('');
       setSending(true)
       const response = await axios.post(`${process.env.REACT_APP_API_URL}/api/contacto`, formData);
       setSending(false);
       setMsg(response.data.message);
       if (response.data.error===false){
           setFormData(initialForm)
       }
   }



    return(
    <main class="Cuerpo30">

    <div  class="columna12">
      
        <form className="formulario" action="/contacto" method="post" onSubmit={handleSubmit} >
            <h2 class="box11">Consultanos </h2>
            <p>
                <label class="box11" for="">Nombre</label>
                <input class="nombre" name="nombre" type="text" value={formData.nombre}  onChange={handleChange} />
            </p>
            <p>
                <label class="box11"  for="">e - Mail</label>
                <input class="nombre" name="email" type="email" value={formData.email}  onChange={handleChange}/>
            </p>
            <p>
                <label class="box11"  for="">Teléfono</label>
                <input class="nombre" name="telefono" type="text" value={formData.telefono}  onChange={handleChange}/>
            </p>
            <p>
                <label class="box11" for="">Comentario</label>
                <input class="nombre1" name="mensaje" type="text" value={formData.mensaje}  onChange={handleChange}/>
            </p>
            
            <p className="centrar" ><input type="submit" value="Enviar"></input></p>
            {sending ? <p>Enviando...</p> : null}
            {msg ? <p>{msg}</p>: null}            
        </form>

            
        
        
        <div class="columna22">
            <img class="img24" src="https://d11o8pt3cttu38.cloudfront.net/wp-content/uploads/sites/39/2021/09/shutterstock_712414813.jpg"  alt=""/>
        </div>

    </div>

  

    <div class="columna3">
       

        <h2 class="texto" >Otras de nuestras vías de Contacto</h2>
        <p class="texto10"><i class="fa-solid fa-envelopes-bulk"> Nuestro telefono: 2604-338133</i></p>
        <p class="texto10"><i class="fas fa-at">E-mail: marcesanchez1904@gmail.com </i></p>
        
    </div>


</main>

   );
}

export default ContactoPage;
