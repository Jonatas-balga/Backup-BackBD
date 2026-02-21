
------- Fazer Login -------
select
	ID_LOGIN					id, 
	TB_PROFESSOR.NM_PROFESSOR	nome,
    TB_PROFESSOR.CPF_PROF		cpf,
	USUARIO						usuario
	from TB_LOGIN
	inner join TB_PROFESSOR
			on TB_PROFESSOR.ID_PROFESSOR = TB_PROFESSOR.ID_PROFESSOR
	 where TB_PROFESSOR.CPF_PROF = '111.111.111-11'
       and SENHA = 'senha123';
