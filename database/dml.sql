INSERT INTO TB_NIVELACESSO (NM_NIVELACESSO, OBSERVACOES) 
VALUES ('Administrador', 'Acesso total: Superintendente e Secretaria'),
	   ('Visitante', 'Apenas visualização, sem permissão de edição'),
	   ('Professor', 'Acesso restrito: Lança chamada e visualiza seus alunos');
       
INSERT INTO TB_PROFESSOR (NM_PROFESSOR, CPF_PROF, OBSERVACOES) 
VALUES ('João da Silva', '111.111.111-11', 'Professor da Classe Jovens'),
	   ('Maria Oliveira', '222.222.222-22', 'Professora do Jardim de Infância'),
	   ('Marcos Cruz', '888.888.888-88', 'Professor da Classe Jovens'),
       ('Maria Oliveira', '999.989.999-99', 'Professora do Jardim de Infância'),
       ('Carlos Eduardo', '333.333.333-33', 'Professor da Classe de Casais'),
       ('Ana Beatriz', '444.444.444-44', 'Professora da Classe dos Adolescentes'),
       ('Marcos Paulo', '555.555.555-55', 'Professor Suplente da Classe Jovens'),
       ('Ruth Gomes', '666.666.666-66', 'Professora da Classe de Senhoras'),
       ('Pedro Almeida', '777.777.777-77', 'Professor da Classe de Senhores');

INSERT INTO TB_LOGIN (ID_NIVELACESSO, ID_PROFESSOR, USUARIO, SENHA) 
			VALUES   (1, NULL, 'admin.ebd', 'super_senha_segura'),
					 (2, 1, '111.111.111-11', 'senha123'),
					 (2, 2, '999.989.999-99', 'senha123'),     -- João (Jovens)
					 (2, 3, '222.222.222-22', 'mariazinha'),   -- Maria (Jardim)
					 (2, 4, '333.333.333-33', 'casais2026'),   -- Carlos (Casais)
					 (2, 5, '444.444.444-44', 'teens_ebd'),    -- Ana (Adolescentes)
					 (2, 6, '555.555.555-55', 'suplente123'),  -- Marcos (Suplente Jovens)
					 (2, 7, '666.666.666-66', 'ruth123'),      -- Ruth (Senhoras)
					 (2, 8, '777.777.777-77', 'pedro123'),     -- Pedro (Senhores)

					 -- Nível 3 (Visitante/Consulta - Sem vínculo de professor)
					 (3, NULL, 'visitante', 'visita_ebd');