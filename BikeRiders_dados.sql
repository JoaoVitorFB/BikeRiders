-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.32 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela bikeriders.noticia: ~3 rows (aproximadamente)
INSERT INTO `noticia` (`ntc_id`, `ntc_titulo`, `ntc_subtitulo`, `ntc_conteudo`, `ntc_dataHora`, `fk_usr_id`) VALUES
	(1, 'Ducati inicia produção da Multistrada V2 na Argentina', 'Uma boa moto', 'Mais uma Ducati começará a ser produzida na Argentina. Depois da linha Scrambler Icon, a fabricante italiana também passa a montar a Multistrada V2 na linha de produção instalada no país vizinho.\nA unidade fica na fábrica da Volkswagen, situada em Córdoba, planta que é responsável pela produção de transmissões, caminhões, e agora dois modelos de motocicletas. \nNova Ducati Multistrada V2 promete muita diversão e conforto nas viagens\nO anúncio foi feito por Marcellus Puig, presidente e CEO do Grupo Volkswagen Argentina durante o Salón Moto 2023, evento realizado na última semana na região de Buenos Aires.\nHonda CB 300F Twister chega a Argentina mais completa – e cara\nBMW confirma apresentação do scooter C 400 X para junho\nCyclone RX401, uma trail chinesa com boa autonomia\n“Após um início bem-sucedido da integração industrial da Ducati na Argentina com a linha Scrambler, estamos orgulhosos de continuar neste caminho, incorporando agora a segunda família de motocicletas, por meio da Multistrada V2. Vale ressaltar que todos esses modelos são produzidos de acordo com os mais altos padrões de qualidade aos quais a Ducati já nos habituou”, disse o executivo.\nA Ducati Multistrada V2 é uma opção divertida e confortável para pilotar durante as viagens. Ela é movida pelo motor V2 Testastretta com 937 cm³ e distribuição desmodrômica, usina capaz de entregar 113 cv de potência a 9.000 rpm. MOTOCICLISMO Brasil já teve o primeiro contato com a moto na versão S, e você confere mais detalhes clicando aqui.\nAlém da Multistrada V2, outra integrante da linha de aventureiras da marca de Borgo Panigale que estreia no país vizinho é a Multistrada V4, que será importada da Itália para a Argentina em um primeiro momento.', '2023-06-01 19:21:32', 1),
	(2, 'BMW confirma apresentação do scooter C 400 X para junho', '', 'A BMW Motorrad acaba de confirmar a apresentação do C 400 X para o mês de junho. A marca alemã havia dado indícios de que sua chegada estava próxima com uma postagem feita em seu perfil no Instagram, e nesta terça (30), anunciou que o modelo será apresentado durante o festival que acontece no autódromo de Interlagos entre 22 a 25 do próximo mês.\nJá as vendas do scooter terão início no segundo semestre. A novidade integra o plano de expansão de portfólio da marca alemã no Brasil, além de representar seu retorno a um dos segmentos da indústria motociclística que mais crescem no país, inclusive considerado pela própria marca como um nicho “muito promissor”.', '2023-06-01 19:23:30', 1),
	(3, 'Cyclone RX401, uma trail chinesa com boa autonomia', 'Cyclone RX401 ', 'A Cyclone RX401 faz parte de uma das marcas da chinesa Zongshen e chegou ao mercado local em 2022. Esta aventureira impressiona não só pelo seu preço, que gira em torno dos 4.200 euros, cerca de R$ 22.500 em conversão direta, mas também pelos seus equipamentos, tanto de série como opcionais.\nA RX401 emprega um motor bicilíndrico em linha de 401 cm³ refrigerado a líquido, com com 4 válvulas por cilindro e injeção de combustível. A unidade gera 45 cv a 9.500 rpm e atinge um valor máximo de torque de 3,8 kgf.m a 8.000 rotações. A velocidade máxima anunciada fica próxima dos 150 km/h.\nCom o tanque cheio, o qual comporta 20,5 litros, o peso declarado é de 215 kg. A autonomia gira na ordem dos 500 km.\n\n', '2023-06-01 19:24:14', 1);

-- Copiando dados para a tabela bikeriders.usuario: ~2 rows (aproximadamente)
INSERT INTO `usuario` (`usr_id`, `usr_nome`, `usr_email`, `usr_senha`) VALUES
	(1, 'João Vitor Ferreira', 'joao@gmail.com', 'joao123'),
	(2, 'José Santos', 'jose@gmail.com', 'jose123');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
