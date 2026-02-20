import { Login } from '../Repository/usuarioRepository.js';



import { Router } from  'express';
const server = Router();


server.post('/usuario/login', async (req,resp) => {

    try {
        const {cpf, senha} = req.body;
        
        const resposta = await Login(cpf, senha);
        if (!resposta) {
            throw new Error('Credencias Invalidas');
        }

        resp.send(resposta)
    } 
    catch (err) {
        resp.status(401).send({
            erro: err.message
        });
    }
})

export default server;