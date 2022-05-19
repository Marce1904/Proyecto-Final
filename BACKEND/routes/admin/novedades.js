var express = require ('express');
const {render} = require('../../app');
const req = require('express/lib/request');
const res = require('express/lib/response');
const async = require('hbs/lib/async');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');
var util = require('util');
var cloudinary = require ('cloudinary').v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);


// GET HOME PAGE

router.get('/', async function (req, res, next){

    var novedades = await novedadesModel.getNovedades();
    novedades = novedades.map(novedades => {

    
    if (novedades.img_id){
        const imagen = cloudinary.image(novedades.img_id, {
            width: 100,
            height: 100,
            crop: 'fill'
        });
        return {
            ...novedades,
            imagen
        } 
    } else { 
            return{
                ...novedades,
                imagen: ''
            }       
    }})

    res.render('admin/novedades',{
        layout: 'admin/layout',
        usuario: req.session.nombre,
        novedades      
            
    });
});

router.get('/agregar', (req, res, next) => {

    res.render('admin/agregar',{
        layout: 'admin/layout',          

    });
});

router.post ('/agregar', async (req, res, next) => {
    try {
        // console.log(req.body);
        var img_id = '';
        if (req.files && Object.keys(req.files).length>0){
            imagen = req.files.imagen;
            img_id = (await uploader (imagen.tempFilePath)).public_id;
        }

        if (req.body.titulo !="" && req.body.subtitulo !="" && req.cuerpo !=""){
            await novedadesModel.insertNovedades(
                {
                    ...req.body,
                    img_id

                });
            res.redirect ('/admin/novedades')
        } else {
            res.render ('admin/agregar', {
                layout: 'admin/agregar',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch(error){
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargó novedad'
        })
    }
})

/*Para eliminar */
router.get("/eliminar/:id", async (req, res, next)=>{
    var id = req.params.id;
    let novedades = await novedadesModel.getNovedadesById(id);
    if(novedades.img_id){
        await(destroy(novedades.img_id));
    }
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades');


}); //cierra get eliminar.


/*para modificar => traer la novedad por id*/
router.get('/modificar/:id', async (req, res, next) =>{

    var id = req.params.id;
    // console.log(req.params.id);
    var novedades= await novedadesModel.getNovedadesById(id);

    res.render('admin/modificar',{
        layout: 'admin/layout',
        novedades
    })


    }); 
/*modificar UPDATE =>*/

router.post('/modificar', async (req, res, next)=> {
    try{
        let img_id = req.body.img_original;
        let borrar_img_vieja = false;
        if(req.body.img_delete === "1"){
            img_id = null;
            borrar_img_vieja = true;
        } else {
            if(req.files && Object.keys(req.files).lenght >0){
                imagen = req.files.imagen;
                img_id = (await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }
        if (borrar_img_vieja && req.body.img_original){
            await (destroy(req.body.img_original));
        }


        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo,
            img_id
        }
        console.log(obj)
        await novedadesModel.modificarNovedadesById(obj, req.body.id);
        res.redirect('/admin/novedades');

    } catch (error){
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modificó la novedad'
        })
    }
})


module.exports = router;
