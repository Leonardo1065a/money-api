CREATE TABLE usuario (
	codigo BIGINT(20) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	codigo BIGINT(20) PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	codigo_usuario BIGINT(20) NOT NULL,
    codigo_permissao BIGINT(20) NOT NULL,
    PRIMARY KEY (codigo_usuario, codigo_permissao),
    FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo),
    FOREIGN KEY (codigo_permissao) REFERENCES permissao(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario(codigo, nome, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$8wS0k5NPF4hTD/Xx7ZtbF.qojxBHZuTBENB0cFDLR8IILd65VjGS2');
INSERT INTO usuario(codigo, nome, email, senha) values (2, 'Maria Silva', 'maria@algamoney.com', '$2a$10$zOZVub1M0HY1XGA4mGPtSembQEestyHDbQXe7DzaKTrBthEPBue0m');

INSERT INTO permissao (codigo, descricao) value (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (codigo, descricao) value (2, 'ROLE_PESQUISAR_CATEGORIA');

INSERT INTO permissao (codigo, descricao) value (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (codigo, descricao) value (4, 'ROLE_REMOVER_PESSOA');
INSERT INTO permissao (codigo, descricao) value (5, 'ROLE_PESQUISAR_PESSOA');

INSERT INTO permissao (codigo, descricao) value (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (codigo, descricao) value (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (codigo, descricao) value (8, 'ROLE_PESQUISAR_LANCAMENTO');

-- admin
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,3);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,4);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,6);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,7);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (1,8);

-- maria
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,8);