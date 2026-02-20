import { con } from "./connection.js";

export async function Login(cpf, senha) {
    // console.log(cpf);
    // console.log(senha);
    
    const comando = 
    `
        select 
            ID_LOGIN					id, 
            TB_PROFESSOR.NM_PROFESSOR	nome,
            TB_PROFESSOR.CPF_PROF		cpf,
            USUARIO						usuario
            from TB_LOGIN
            inner join TB_PROFESSOR on TB_PROFESSOR.ID_PROFESSOR = TB_PROFESSOR.ID_PROFESSOR
            where TB_PROFESSOR.CPF_PROF = ?
            and SENHA = ?
    `
    const [linha] = await con.query(comando, [cpf,senha]);

    // console.log(linha[0]);
    
    return linha[0];
    
}   