CREATE ROLE GERENTE;
	ALTER USER GERENTE SUPERUSER;

CREATE ROLE SUPERVISOR;
	ALTER USER SUPERVISOR SUPERUSER;
	--TABLES
	REVOKE INSERT, UPDATE, DELETE ON FUNCIONARIO, CARGO FROM SUPERVISOR;
	REVOKE DELETE ON PRODUTO, TIPO_SERVICO FROM SUPERVISOR;
	--FUNCTIONS
	REVOKE EXECUTE ON FUNCTION ADD_FUNC(CPF_F VARCHAR(50),NOME_F VARCHAR(150),FONE_F VARCHAR(50),CONTA_F VARCHAR(50),NOME_CAR VARCHAR(100)) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION ADICIONAR (TABELA VARCHAR(50),CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50),CONTA VARCHAR(50),NOME_CARGO VARCHAR(100)) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION ADD_CARGO(NOME_CAR VARCHAR(100),SALARIO_CAR NUMERIC(8,2)) FROM SUPERVISOR;
	
	REVOKE EXECUTE ON FUNCTION ALTER_FUNC(COD_F INT,CPF_F VARCHAR(50),NOME_F VARCHAR(150),FONE_F VARCHAR(50),CONTA_F VARCHAR(50),NOME_CAR VARCHAR(100)) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION ALTERAR (TABELA VARCHAR(50),COD INT,CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50),CONTA VARCHAR(50),NOME_CARGO VARCHAR(100)) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION ALTER_CARGO(COD_CAR INT,NOME_CAR VARCHAR(100),SALARIO_CAR NUMERIC(8,2)) FROM SUPERVISOR;
	
	REVOKE EXECUTE ON FUNCTION DELETE_FUNCIONARIO(COD_F INT) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION DELETE_CARGO(COD_CAR INT) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION DELETE_PRODUTO(COD_P INT) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION DELETE_TIPO_SERV(COD_TS INT) FROM SUPERVISOR;
	
	REVOKE EXECUTE ON FUNCTION CALCULAR_COMISSAO(FUNCIONARIO_ID INT,DATA_INICIO DATE,DATA_FIM DATE) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION SALARIO_TOTAL(FUNCIONARIO_ID INT,DATA_INICIO DATE,DATA_FINAL DATE) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION RELATORIO_SERVICO(DT_I DATE, DT_F DATE) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION RELATORIO_VENDA(DT_I DATE, DT_F DATE) FROM SUPERVISOR;
	REVOKE EXECUTE ON FUNCTION RELATORIO_FUNCIONARIO(CARGO VARCHAR(150), DT_I DATE, DT_F DATE) FROM SUPERVISOR;
	

CREATE ROLE ATENDENTE;
	--FUNCTIONS
	GRANT EXECUTE ON FUNCTION ADD_VENDA(CPF_C VARCHAR(50), NOME_P VARCHAR(100), QNTD_V INT, CPF_F VARCHAR(50)) TO ATENDENTE;
	GRANT EXECUTE ON FUNCTION FINALIZAR_VENDA(CPF_C VARCHAR(50)) TO ATENDENTE;
	GRANT EXECUTE ON FUNCTION GERAR_NOTA_VENDA_ABERTA(CPF_C VARCHAR(50)) TO ATENDENTE;
	GRANT EXECUTE ON FUNCTION ADD_CLIENTE(CPF_C VARCHAR(50),NOME_C VARCHAR(150),FONE_C VARCHAR(50)) TO ATENDENTE;
	GRANT EXECUTE ON FUNCTION ADICIONAR(TABELA VARCHAR(50),CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50)) TO ATENDENTE;
	
	REVOKE ALL ON FUNCTION ADD_VENDA(CPF_C VARCHAR(50), NOME_P VARCHAR(100), QNTD_V INT, CPF_F VARCHAR(50)) FROM ATENDENTE;
	REVOKE ALL ON FUNCTION FINALIZAR_VENDA(CPF_C VARCHAR(50)) FROM ATENDENTE;
	REVOKE ALL ON FUNCTION GERAR_NOTA_VENDA_ABERTA(CPF_C VARCHAR(50)) FROM ATENDENTE;
	REVOKE ALL ON FUNCTION ADD_CLIENTE(CPF_C VARCHAR(50),NOME_C VARCHAR(150),FONE_C VARCHAR(50)) FROM ATENDENTE;
	REVOKE ALL ON FUNCTION ADICIONAR(TABELA VARCHAR(50),CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50)) FROM ATENDENTE;
	--TABLES
	GRANT SELECT, INSERT, UPDATE ON VENDA, ITEM_VENDA, CLIENTE TO ATENDENTE;
	GRANT SELECT ON PRODUTO TO ATENDENTE;


CREATE ROLE GROOMER;
	-- FUNCTIONS
	GRANT EXECUTE ON FUNCTION ADD_SERVICO(NOME_TS VARCHAR(100), CPF_F VARCHAR(50), CPF_C VARCHAR(50), NOME_A VARCHAR(150)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION FINALIZAR_SERVICO(CPF_C VARCHAR(50)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION GERAR_NOTA_SERV_ABERTA(CPF_C VARCHAR(50)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION ADD_ANIMAL(NOME_A VARCHAR(150),DT_NASC_A DATE,DESCRICAO_A TEXT,CPF_C VARCHAR(50)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION ADICIONAR (TABELA VARCHAR(50),NOME VARCHAR(150),DT_NASC DATE,DESCRICAO TEXT,CPF VARCHAR(50)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION ADD_CLIENTE(CPF_C VARCHAR(50),NOME_C VARCHAR(150),FONE_C VARCHAR(50)) TO GROOMER;
	GRANT EXECUTE ON FUNCTION ADICIONAR(TABELA VARCHAR(50),CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50)) TO GROOMER;
	
	REVOKE ALL ON FUNCTION ADD_SERVICO(NOME_TS VARCHAR(100), CPF_F VARCHAR(50), CPF_C VARCHAR(50), NOME_A VARCHAR(150)) FROM GROOMER;
	REVOKE ALL ON FUNCTION FINALIZAR_SERVICO(CPF_C VARCHAR(50)) FROM GROOMER;
	REVOKE ALL ON FUNCTION GERAR_NOTA_SERV_ABERTA(CPF_C VARCHAR(50)) FROM GROOMER;
	REVOKE ALL ON FUNCTION ADD_ANIMAL(NOME_A VARCHAR(150),DT_NASC_A DATE,DESCRICAO_A TEXT,CPF_C VARCHAR(50)) FROM GROOMER;
	REVOKE ALL ON FUNCTION ADICIONAR (TABELA VARCHAR(50),NOME VARCHAR(150),DT_NASC DATE,DESCRICAO TEXT,CPF VARCHAR(50)) FROM GROOMER;
	REVOKE ALL ON FUNCTION ADD_CLIENTE(CPF_C VARCHAR(50),NOME_C VARCHAR(150),FONE_C VARCHAR(50)) FROM GROOMER;
	REVOKE ALL ON FUNCTION ADICIONAR(TABELA VARCHAR(50),CPF VARCHAR(50),NOME VARCHAR(150),FONE VARCHAR(50)) FROM GROOMER;
	-- TABLES
	GRANT SELECT, INSERT, UPDATE ON CLIENTE, ANIMAL, SERVICO TO GROOMER;
	GRANT SELECT ON TIPO_SERVICO TO GROOMER;
	-- VIEWS
	GRANT SELECT ON VER_ANIMAIS TO GROOMER;

-- CRIAR USUARIOS 
	CREATE USER "LAYS EMANUELLY";
	CREATE USER "WAGNER RODRIGUES";
	CREATE USER "ALESSANDRA GRAZIELE";
	CREATE USER "KAYLANNE SANTOS";
	CREATE USER "VINICIUS SANTIAGO";
	CREATE USER "GABRIEL OLIVEIRA";

	GRANT GERENTE TO "LAYS EMANUELLY";
	GRANT SUPERVISOR TO "WAGNER RODRIGUES";
	GRANT ATENDENTE TO "ALESSANDRA GRAZIELE";
	GRANT ATENDENTE TO "KAYLANNE SANTOS";
	GRANT GROOMER TO "VINICIUS SANTIAGO";
	GRANT GROOMER TO "GABRIEL OLIVEIRA";



-- ENTRAR NA ROLE/USUARIO
--SET ROLE ATENDENTE;

-- SAIR DA ROLE/USUARIO
--RESET ROLE