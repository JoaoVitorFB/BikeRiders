var database = require("../database/config");

function listar() {
    console.log("ACESSEI O AVISO  MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT 
            n.ntc_id AS idNoticia,
            n.ntc_titulo AS titulo,
            n.ntc_subtitulo AS subtitulo,
            n.ntc_conteudo AS conteudo,
            DATE(n.ntc_data) AS data,
            n.ntc_hora AS hora,
            n.ntc_imagem AS imagem,
            n.fk_usr_id,
            u.usr_id AS idUsuario,
            u.usr_nome AS nomeUsuario,
            u.usr_email AS email,
            u.usr_senha AS senha
        FROM noticia n
            INNER JOIN usuario u
                ON n.fk_usr_id = u.usr_id ORDER BY idNoticia;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function pesquisarDescricao(texto) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function pesquisarDescricao()");
    var instrucao = `
        SELECT 
            a.id AS idAviso,
            a.titulo,
            a.descricao,
            a.fk_usuario,
            u.id AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN usuario u
                ON a.fk_usuario = u.id
        WHERE a.descricao LIKE '${texto}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarPorNoticia(idNoticia) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarPorUsuario()");
    var instrucao = `
    SELECT 
    n.ntc_id AS idNoticia,
    n.ntc_titulo AS titulo,
    n.ntc_subtitulo AS subtitulo,
    n.ntc_conteudo AS conteudo,
    DATE(n.ntc_data) AS data,
    n.ntc_hora AS hora,
    n.ntc_imagem AS imagem,
    n.fk_usr_id,
    u.usr_id AS idUsuario,
    u.usr_nome AS nomeUsuario,
    u.usr_email AS email,
    u.usr_senha AS senha
    FROM noticia n
    INNER JOIN usuario u
    ON n.fk_usr_id = u.usr_id
    WHERE n.ntc_id = ${idNoticia};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function publicar(titulo, subtitulo, conteudo, imagem, idUsuario) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function publicar(): ", titulo, subtitulo, conteudo, imagem, idUsuario);
    var instrucao = `
        INSERT INTO noticia (ntc_titulo, ntc_subtitulo, ntc_conteudo, ntc_data, ntc_hora, ntc_imagem, fk_usr_id) VALUES ('${titulo}', '${subtitulo}', '${conteudo}', CURDATE(), CURTIME(), '${imagem}', ${idUsuario});
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function editar(novaDescricao, idAviso) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function editar(): ", novaDescricao, idAviso);
    var instrucao = `
        UPDATE aviso SET descricao = '${novaDescricao}' WHERE id = ${idAviso};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function deletar(idAviso) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function deletar():", idAviso);
    var instrucao = `
        DELETE FROM aviso WHERE id = ${idAviso};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listar,
    listarPorNoticia,
    pesquisarDescricao,
    publicar,
    editar,
    deletar
}
