CREATE TABLE atendimentos_servicos (
  id INT AUTO_INCREMENT NOT NULL,
  atendimento INT NOT NULL,
  servico INT NOT NULL,
  valor FLOAT(50) NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pessoas (
  id INT AUTO_INCREMENT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  tipo INT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);
                                          
CREATE TABLE pessoas_tipo (
  id INT NOT NULL,
  descricao VARCHAR(100) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE atendimentos (
  id INT AUTO_INCREMENT NOT NULL,
  responsavel INT NOT NULL,
  paciente INT NOT NULL,
  observacao VARCHAR(100),
  valor_total FLOAT(50) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE servicos (
  id INT AUTO_INCREMENT NOT NULL,
  descricao VARCHAR(100) NOT NULL,
  valor FLOAT(50) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  tipo INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE servicos_tipo (
  id INT NOT NULL,
  descricao VARCHAR(100),
  created_at TIMESTAMP,
  updated_at TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE atendimentos ADD CONSTRAINT pessoas_atendimentos_responsavel
  FOREIGN KEY (responsavel)
  REFERENCES pessoas (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE atendimentos ADD CONSTRAINT pessoas_atendimentos_paciente
  FOREIGN KEY (paciente)
  REFERENCES pessoas (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE pessoas ADD CONSTRAINT pessoas_tipo_pessoas
  FOREIGN KEY (tipo)
  REFERENCES pessoas_tipo (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE servicos ADD CONSTRAINT servicos_tipo_servicos
  FOREIGN KEY (tipo)
  REFERENCES servicos_tipo (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE atendimentos_servicos ADD CONSTRAINT atendimentos_atendimentos_servicos
  FOREIGN KEY (atendimento)
  REFERENCES atendimentos (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE atendimentos_servicos ADD CONSTRAINT servicos_atendimentos_servicos
  FOREIGN KEY (servico)
  REFERENCES servicos (id)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

INSERT INTO pessoas_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('1', 'Paciente', '2024-05-30 16:22:37', '2024-05-30 16:22:37');
INSERT INTO pessoas_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('2', 'Farmacêutico', '2024-05-30 00:00:00', '2024-05-30 00:00:00');
INSERT INTO servicos_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('1', 'Atenção Farmaceutica Domiciliar', '2024-05-30 00:00:00', '2024-05-30 00:00:00'); 
INSERT INTO servicos_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('2', 'Aferição de Parâmetros Fisiológicos', '2024-05-30 00:00:00', '2024-05-30 00:00:00'); 
INSERT INTO servicos_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('3', 'Aferição de parâmetros Bioquímicos', '2024-05-30 00:00:00', '2024-05-30 00:00:00'); 
INSERT INTO servicos_tipo (`id`, `descricao`, `created_at`, `updated_at`) VALUES ('4', 'Administração de Medicamentos', '2024-05-30 00:00:00', '2024-05-30 00:00:00'); 