//CODIGO EM MYSQL DO DIAGRAMA 

CRIAR  TABELA  Hospital (
  id INT  CHAVE PRIMÁRIA
);

CREATE  TABLE  Internações (
  id INT  CHAVE PRIMÁRIA ,
  hospital_id INT ,
  FOREIGN KEY (hospital_id) REFERÊNCIAS Hospital(id)
);

CRIAR  TABELA  Quartos (
  id INT  CHAVE PRIMÁRIA
);

CREATE TABLE Numeração (
  id INT  CHAVE PRIMÁRIA ,
  quarto_id INT,
  FOREIGN KEY (quarto_id) REFERÊNCIAS Quartos(id)
);

CREATE TABLE Tipo_de_Quarto (
  id INT  CHAVE PRIMÁRIA ,
  quarto_id INT,
  FOREIGN KEY (quarto_id) REFERÊNCIAS Quartos(id)
);

CREATE TABLE Descrição (
  id INT  CHAVE PRIMÁRIA ,
  tipo_de_quarto_id INT,
  FOREIGN KEY (tipo_de_quarto_id) REFERENCES Tipo_de_Quarto(id)
);

CREATE TABLE Valor_Diário (
  id INT  CHAVE PRIMÁRIA ,
  tipo_de_quarto_id INT,
  FOREIGN KEY (tipo_de_quarto_id) REFERENCES Tipo_de_Quarto(id)
);

CREATE TABLE Profissionais_de_Enfermagem (
  id INT  CHAVE PRIMÁRIA ,
  internacao_id INT ,
  FOREIGN KEY (internacao_id) REFERÊNCIAS Internações(id)
);

CRIAR  TABELA  Nome (
  id INT  CHAVE PRIMÁRIA ,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CRIAR  TABELA  CPF (
  id INT  CHAVE PRIMÁRIA ,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CREATE TABLE Registro_no_Conselho_de_Enfermagem (
  id INT  CHAVE PRIMÁRIA ,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CRIAR  TABELA  Paciente (
  id INT  CHAVE PRIMÁRIA
);

CREATE TABLE Médico_Responsável (
  id INT  CHAVE PRIMÁRIA
);

CREATE TABLE Sistema_Clinico (
  id INT  CHAVE PRIMÁRIA
);

CRIAR  TABELA  Consultas (
  id INT  CHAVE PRIMÁRIA ,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE TABLE Dados_Pessoais (
  id INT  CHAVE PRIMÁRIA ,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE  TABLE  Especialidades (
  id INT  CHAVE PRIMÁRIA ,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais(id)
);

CREATE TABLE Data_e_Hora (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE  TABLE  M édico (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CRIAR  TABELA  Paciente_1 (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Valor_da_Consulta (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Nome_do_Convênio_e_Número_da_Carteira (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Especialidade_Buscada (
  id INT  CHAVE PRIMÁRIA ,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Dados_Pessoais_1 (
  id INT  CHAVE PRIMÁRIA
);

CREATE  TABLE  Documentos (
  id INT  CHAVE PRIMÁRIA ,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais_1(id)
);

CREATE  TABLE  Convênio (
  id INT  CHAVE PRIMÁRIA ,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais_1(id)
);

CREATE TABLE Receita_Médica (
  id INT  CHAVE PRIMÁRIA ,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE  TABLE  Medicamentos (
  id INT  CHAVE PRIMÁRIA ,
  receita_medica_id INT,
  FOREIGN KEY (receita_medica_id) REFERENCES Receita_Médica(id)
);

CREATE  TABLE  Quantidade (
  id INT  CHAVE PRIMÁRIA ,
  medicamentos_id INT,
  FOREIGN KEY (medicamentos_id) REFERENCES Medicamentos(id)
);

CREATE TABLE Instruções_de_Uso (
  id INT  CHAVE PRIMÁRIA ,
  medicamentos_id INT,
  FOREIGN KEY (medicamentos_id) REFERENCES Medicamentos(id)
);

CREATE TABLE Relatório_de_Receita (
  id INT  CHAVE PRIMÁRIA ,
  receita_medica_id INT,
  FOREIGN KEY (receita_medica_id) REFERENCES Receita_Médica(id)
);