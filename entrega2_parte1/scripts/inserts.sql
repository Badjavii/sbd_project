-- ==========================================
-- Inserts PAIS (11 registros)
-- ==========================================
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('España', 'EUR', 'Espanol', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Francia', 'EUR', 'Frances', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Reino Unido', 'GBP', 'Britanico', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Grecia', 'EUR', 'Griego', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Uruguay', 'UYU', 'Uruguayo', 'America');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Estados Unidos', 'USD', 'Estadounidense', 'America');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Rusia', 'RUB', 'Ruso', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Imperio Austrohungaro', 'EUR', 'Austriaco', 'Europa');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Venezuela', 'VES', 'Venezolano', 'America');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Mexico', 'MXN', 'Mexicano', 'America');
insert into sojg_pais (nombre, moneda, nacionalidad, continente) values ('Colombia', 'COP', 'Colombiano', 'America');
commit;

-- ==========================================
-- Inserts INSTITUCION (9 registros)
-- ==========================================
insert into sojg_institucion (nombre, tipo) values ('Universidad Complutense de Madrid', 'Universidad');
insert into sojg_institucion (nombre, tipo) values ('Biblioteca Nacional de Francia', 'Biblioteca');
insert into sojg_institucion (nombre, tipo) values ('British Library', 'Biblioteca');
insert into sojg_institucion (nombre, tipo) values ('New York Public Library', 'Biblioteca');
insert into sojg_institucion (nombre, tipo) values ('Universidad Central de Venezuela', 'Universidad');
insert into sojg_institucion (nombre, tipo) values ('UNAM - Biblioteca Central', 'Biblioteca');
insert into sojg_institucion (nombre, tipo) values ('Biblioteca Luis Angel Arango', 'Biblioteca');
insert into sojg_institucion (nombre, tipo) values ('Portland State University', 'Universidad');
insert into sojg_institucion (nombre, tipo) values ('Universidad Catolica Andres Bello', 'Universidad');
commit;

-- ==========================================
-- Inserts AUTOR (16 registros)
-- ==========================================
insert into sojg_autor (nombre, apellido) values ('Miguel', 'de Cervantes');
insert into sojg_autor (nombre, apellido) values ('Victor', 'Hugo');
insert into sojg_autor (nombre, apellido) values ('Charles', 'Dickens');
insert into sojg_autor (nombre, apellido) values ('Charlotte', 'Bronte');
insert into sojg_autor (nombre, apellido) values ('Homero', 'De Quios');
insert into sojg_autor (nombre, apellido) values ('William', 'Shakespeare');
insert into sojg_autor (nombre, apellido) values ('Horacio', 'Quiroga');
insert into sojg_autor (nombre, "2do_nombre", apellido) values ('Francis', 'Scott', 'Fitzgerald');
insert into sojg_autor (nombre, apellido) values ('Fiodor', 'Dostoyevski');
insert into sojg_autor (nombre, apellido) values ('Franz', 'Kafka');
insert into sojg_autor (nombre, apellido) values ('Oscar', 'Wilde');
insert into sojg_autor (nombre, apellido) values ('Bram', 'Stoker');
insert into sojg_autor (nombre, apellido) values ('Mary', 'Shelley');
insert into sojg_autor (nombre, apellido) values ('Albert', 'Camus');
insert into sojg_autor (nombre, apellido) values ('John', 'Steinbeck');
insert into sojg_autor (nombre, apellido) values ('Jane', 'Austen');
commit;

-- ==========================================
-- Inserts REPRESENTANTE (16 registros)
-- ==========================================
insert into sojg_representante (documento_identidad, nombre, apellido) values ('V-12345678', 'Maria', 'Gonzalez');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('V-23456789', 'Carlos', 'Perez');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('E-34567890', 'Sophie', 'Dubois');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('E-45678901', 'James', 'Mitchell');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('US-5678901', 'Elena', 'Volkova');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('US-6789012', 'Carmen', 'Torres');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('M-56789012', 'Alejandro', 'Ramirez');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('M-67890123', 'Isabella', 'Martin');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('US-7890123', 'Robert', 'Young');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('US-8901234', 'Susan', 'King');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('C-89012345', 'Gloria', 'Suarez');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('C-90123456', 'Ricardo', 'Cano');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('FR-1234567', 'Francoise', 'Blanc');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('FR-2345678', 'Michel', 'Garnier');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('M-78901234', 'Carmen', 'Estrada');
insert into sojg_representante (documento_identidad, nombre, apellido) values ('M-89012345', 'Roberto', 'Reyes');
commit;

-- ==========================================
-- Inserts CIUDAD (9 registros)
-- ==========================================
insert into sojg_ciudad (nombre, id_pais) values ('Madrid', 1);
insert into sojg_ciudad (nombre, id_pais) values ('Paris', 2);
insert into sojg_ciudad (nombre, id_pais) values ('Londres', 3);
insert into sojg_ciudad (nombre, id_pais) values ('Nueva York', 6);
insert into sojg_ciudad (nombre, id_pais) values ('Caracas', 9);
insert into sojg_ciudad (nombre, id_pais) values ('Ciudad de Mexico', 10);
insert into sojg_ciudad (nombre, id_pais) values ('Bogota', 11);
insert into sojg_ciudad (nombre, id_pais) values ('Portland', 6);
insert into sojg_ciudad (nombre, id_pais) values ('Moscu', 7);
commit;

-- ==========================================
-- Inserts LIBRO (16 registros)
-- ==========================================
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978001, 'Don Quijote de la Mancha', 863, 'Espanol', 1605, 'Alonso Quijano, un hidalgo manchego de mediana edad, enloquece leyendo libros de caballerias y decide convertirse en caballero andante bajo el nombre de Don Quijote de la Mancha. Acompanado de su fiel escudero Sancho Panza, un labrador ingenuo y pragmatico, emprende tres salidas en busca de aventuras para defender a los debiles y deshacer entuertos. Sus aventuras, marcadas por la confusion entre la fantasia y la realidad, lo llevan a enfrentarse con molinos de viento que cree gigantes, rebanhos que confunde con ejercitos y ventas que toma por castillos. La novela explora temas como la locura, la identidad, la justicia y el idealismo frente al pragmatismo, convirtiendose en una critica y homenaje simultaneo a los libros de caballerias.', 'Caballeria', 'Novela', 'SI', 1);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978002, 'Los miserables', 1200, 'Frances', 1862, 'Jean Valjean, un ex presidiario que cumplio condena por robar pan, intenta reconstruir su vida bajo una identidad falsa mientras es perseguido implacablemente por el inspector Javert. A traves de su historia se entrelazan las vidas de Fantine, una madre soltera que cae en la miseria, y Cosette, su hija adoptada por Valjean. La novela transcurre en el turbulento Paris del siglo XIX, entre la miseria de los barrios bajos, la revolucion de 1832 y los ideales republicanos. Hugo retrata con profundidad la injusticia social, la redencion moral y la lucha entre el bien y el mal en una sociedad marcada por la desigualdad extrema.', 'Injusticia social', 'Novela', 'SI', 2);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978003, 'Historia de dos ciudades', 450, 'Ingles', 1859, 'Ambientada en Londres y Paris durante la Revolucion Francesa, la novela sigue las vidas de Charles Darnay, un aristocrata frances que renuncia a su titulo, y Sydney Carton, un abogado ingles alcoholico pero brillante, ambos enamorados de Lucie Manette. El doctor Manette, padre de Lucie, fue encarcelado injustamente en la Bastilla durante dieciocho anos. Con la revolucion en marcha, Darnay es arrestado y condenado a la guillotina. Carton, en un acto supremo de amor y sacrificio, ocupa su lugar. Dickens retrata la violencia y el caos revolucionario mientras explora temas de resurreccion, sacrificio y la dualidad humana.', 'Revolucion Francesa', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978004, 'Jane Eyre', 500, 'Ingles', 1847, 'Jane Eyre es una huerfana inglesa que crece en condiciones de pobreza y maltrato, primero en casa de sus tios y luego en el rigido internado Lowood. Tras graduarse, se convierte en institutriz en Thornfield Hall, residencia del misterioso senor Rochester, de quien se enamora. Su relacion se ve obstaculizada por un terrible secreto que Rochester oculta en el atico de la mansion. Jane, guiada por su fuerte sentido moral e independencia, debe elegir entre el amor y sus principios. La novela es pionera en retratar la conciencia femenina y la busqueda de identidad e igualdad en la Inglaterra victoriana.', 'Romance y drama', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978005, 'La Iliada', 600, 'Griego Antiguo', 800, 'La Iliada narra los acontecimientos de las ultimas semanas de la guerra de Troya, desencadenada por el rapto de Helena, esposa del rey espartano Menelao, a manos del principe troyano Paris. El poema se centra en la colera de Aquiles, el mas grande guerrero griego, quien se retira del combate tras una disputa con Agamenon. Su alejamiento provoca grandes perdidas entre los griegos, hasta que la muerte de su amigo Patroclo lo impulsa a volver al campo de batalla. El poema culmina con el enfrentamiento entre Aquiles y el heroe troyano Hector, y la entrega del cuerpo de este a su padre Priamo.', 'Guerra', 'Epopeya', 'NO', 4);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978006, 'Hamlet', 200, 'Ingles', 1603, 'El principe Hamlet de Dinamarca recibe la visita del fantasma de su padre, quien le revela que fue asesinado por su propio hermano Claudio, quien ahora ocupa el trono y se ha casado con la madre de Hamlet, Gertrudis. Obsesionado con la venganza pero paralizado por la duda y la reflexion filosofica, Hamlet simula locura mientras elabora un plan para confirmar la culpa de Claudio. A traves de sus famosos monologos, la obra explora la traicion, la corrupcion moral, la muerte y la indecision. La tragedia culmina en un violento desenlace que arrastra a casi todos los personajes principales.', 'Venganza', 'Otro', 'NO', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978007, 'Cuentos de amor de locura y de muerte', 150, 'Espanol', 1917, 'Coleccion de cuentos del escritor uruguayo Horacio Quiroga ambientados principalmente en la selva misionera argentina. Los relatos exploran con crudeza y precision los limites entre la vida y la muerte, la locura, la pasion amorosa y la violencia de la naturaleza. Entre los cuentos mas destacados se encuentran El almohadon de plumas, A la deriva y La gallina degollada. Quiroga retrata personajes atrapados por fuerzas que los superan, ya sean enfermedades, obsesiones o el entorno hostil. Su prosa directa e intensa anticipa el realismo magico latinoamericano y lo consagra como maestro del cuento hispanoamericano.', 'Muerte y tragedia', 'Cuento', 'SI', 5);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978008, 'El gran Gatsby', 218, 'Ingles', 1925, 'Nick Carraway narra la historia de Jay Gatsby, un misterioso millonario que organiza lujosas fiestas en su mansion de Long Island con la esperanza de reencontrarse con Daisy Buchanan, su amor del pasado ahora casada con el arrogante Tom Buchanan. Ambientada en el Nueva York de los anos veinte, la novela retrata el esplendor y la decadencia del sueno americano, la superficialidad de la clase alta y la imposibilidad de recuperar el pasado. A traves de la obsesion romantica de Gatsby, Fitzgerald critica la corrupcion moral detras de la riqueza y el vacio existencial de una sociedad dominada por las apariencias.', 'Decadencia americana', 'Novela', 'SI', 6);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978009, 'Crimen y castigo', 600, 'Ruso', 1866, 'Rodion Raskolnikov, un estudiante ruso en situacion de extrema pobreza, desarrolla una teoria segun la cual ciertas personas extraordinarias tienen el derecho moral de transgredir la ley en beneficio de la humanidad. Guiado por esta conviccion, asesina a una anciana usurera y a su hermana. Sin embargo, el peso psicologico del crimen lo lleva al borde de la locura. El investigador Porfiry Petrovich lo acorrala intelectualmente mientras Sonya, una joven obligada a prostituirse, le ofrece redencion espiritual. La novela explora con profundidad la culpa, el libre albedrio, la redencion y la naturaleza del mal.', 'Culpa y redencion', 'Novela', 'SI', 7);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978010, 'La metamorfosis', 100, 'Aleman', 1915, 'Gregor Samsa, un viajante de comercio que sostiene economicamente a su familia, amanece un dia convertido en un enorme insecto. Incapaz de trabajar y de comunicarse, se convierte en una carga para su familia, que inicialmente intenta adaptarse a la situacion pero progresivamente lo rechaza. Su hermana Grete, quien al principio lo cuida con dedicacion, termina pidiendo que lo eliminen. La novela de Kafka es una alegoria sobre la alienacion, la deshumanizacion en la sociedad moderna y el papel del individuo en la familia y en el sistema productivo. Su transformacion fisica refleja la invisibilidad que ya sufria en vida.', 'Aislamiento', 'Novela', 'NO', 8);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978011, 'El retrato de Dorian Gray', 250, 'Ingles', 1890, 'Dorian Gray, un joven de extraordinaria belleza en el Londres victoriano, desea que un retrato suyo envieje en su lugar mientras el permanece joven para siempre. Su deseo se cumple misteriosamente. Bajo la influencia del cinico Lord Henry Wotton, Dorian se entrega al hedonismo y a la corrupcion moral sin consecuencias fisicas visibles, mientras su retrato refleja cada pecado y la degradacion de su alma. Wilde construye una novela filosofica sobre la vanidad, la etica estetica y la dualidad entre apariencia y realidad. El desenlace revela que la verdadera belleza no puede separarse de la virtud moral.', 'Vanidad', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978012, 'Dracula', 400, 'Ingles', 1897, 'Jonathan Harker, un joven abogado ingles, viaja a Transilvania para cerrar una transaccion inmobiliaria con el Conde Dracula, un noble misterioso que resulta ser un vampiro centenario. Dracula se traslada a Londres donde comienza a acechar a Mina Murray, prometida de Harker, y a su amiga Lucy Westenra. Un grupo de valientes, liderado por el profesor Van Helsing, se une para cazar y destruir al vampiro. La novela, narrada a traves de diarios, cartas y articulos de periodico, mezcla horror gotico con temas victorianos sobre sexualidad, pureza, supersticion y el choque entre lo racional y lo sobrenatural.', 'Terror', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978013, 'Frankenstein', 280, 'Ingles', 1818, 'Victor Frankenstein, un joven cientifico suizo obsesionado con los secretos de la vida y la muerte, logra crear un ser humano a partir de partes de cadaveres. Al ver la criatura que ha creado, huye horrorizado, abandonandola a su suerte. La criatura, rechazada por todos, aprende a hablar y a leer por cuenta propia, pero al no encontrar amor ni aceptacion se convierte en un ser vengativo. Exige a Frankenstein que le cree una companera, y ante la negativa desata una serie de tragedias. Shelley explora temas como la responsabilidad cientifica, el rechazo social, la soledad y los peligros de jugar a ser Dios.', 'Ciencia ficcion', 'Novela', 'SI', 3);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978014, 'El extranjero', 120, 'Frances', 1942, 'Meursault, un empleado frances que vive en Argelia, recibe la noticia de la muerte de su madre sin mostrar ninguna emocion aparente. Dias despues, en la playa, mata a un arabe en circunstancias confusas. Durante el juicio, la sociedad lo condena menos por el crimen que por su indiferencia emocional ante la muerte de su madre. Enfrentado a la pena de muerte, Meursault reflexiona sobre el absurdo de la existencia humana y la indiferencia del universo. Camus construye una novela filosofica sobre el existencialismo y el absurdo, cuestionando los valores morales y sociales convencionales a traves de un protagonista radicalmente honesto.', 'Absurdo', 'Novela', 'SI', 2);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978015, 'De ratones y hombres', 110, 'Ingles', 1937, 'George Milton y Lennie Small son dos trabajadores migrantes que recorren California durante la Gran Depresion en busca de empleo. George es inteligente y pragmatico; Lennie es un hombre de enorme fuerza fisica pero con discapacidad intelectual que no controla su propia fuerza. Ambos comparten el sueno de ahorrar dinero para comprar su propia tierra y vivir de manera independiente. Al llegar a un rancho a trabajar, una serie de conflictos con otros personajes, especialmente con la esposa del jefe, desemboca en una tragedia inevitable. Steinbeck retrata la amistad, la soledad y la fragilidad del sueno americano.', 'Amistad', 'Novela', 'SI', 6);
insert into sojg_libro (isbn, titulo, numero_paginas, idioma, anno_publicacion, sinopsis, tema_resumen, tipo_narrativa, primera_edicion, id_pais_publicacion)
    values (978016, 'Orgullo y prejuicio', 430, 'Ingles', 1813, 'Elizabeth Bennet, la segunda de cinco hermanas de una familia de clase media en la Inglaterra rural, conoce al orgulloso y rico Mr. Darcy en un baile. Su primer encuentro esta marcado por el desagrado mutuo. A medida que se van conociendo, ambos deben superar sus propios prejuicios y el orgullo que les impide reconocer sus verdaderos sentimientos. Mientras las hermanas Bennet enfrentan presiones sociales para casarse bien, la novela satiriza las convenciones matrimoniales de la epoca. Austen construye una comedia de costumbres que critica con ingenio la sociedad inglesa y reivindica el matrimonio basado en el amor y el respeto mutuo.', 'Romance', 'Novela', 'SI', 3);
commit;

-- ==========================================
-- Inserts AUTOR_LIBRO (16 registros)
-- ==========================================
insert into sojg_autor_libro (id_autor, isbn_libro) values (1, 978001);
insert into sojg_autor_libro (id_autor, isbn_libro) values (2, 978002);
insert into sojg_autor_libro (id_autor, isbn_libro) values (3, 978003);
insert into sojg_autor_libro (id_autor, isbn_libro) values (4, 978004);
insert into sojg_autor_libro (id_autor, isbn_libro) values (5, 978005);
insert into sojg_autor_libro (id_autor, isbn_libro) values (6, 978006);
insert into sojg_autor_libro (id_autor, isbn_libro) values (7, 978007);
insert into sojg_autor_libro (id_autor, isbn_libro) values (8, 978008);
insert into sojg_autor_libro (id_autor, isbn_libro) values (9, 978009);
insert into sojg_autor_libro (id_autor, isbn_libro) values (10, 978010);
insert into sojg_autor_libro (id_autor, isbn_libro) values (11, 978011);
insert into sojg_autor_libro (id_autor, isbn_libro) values (12, 978012);
insert into sojg_autor_libro (id_autor, isbn_libro) values (13, 978013);
insert into sojg_autor_libro (id_autor, isbn_libro) values (14, 978014);
insert into sojg_autor_libro (id_autor, isbn_libro) values (15, 978015);
insert into sojg_autor_libro (id_autor, isbn_libro) values (16, 978016);
commit;

-- ==========================================
-- Inserts CLUB (8 registros)
-- ==========================================
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Club de Lectura de la Biblioteca Los Palos Grandes', 'Calle Los Palos Grandes, Caracas', '1060', 'Espanol', 5, 'SI', 9);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Club de Lectura de la Biblioteca Nacional de Espana', 'Paseo de Recoletos, Madrid', '28001', 'Espanol', 1, 'NO', 1);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Strand Book Store Book Clubs', '828 Broadway, New York', '10003', 'Ingles', 4, 'SI', 4);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Club de Lectura de la Libreria El Pendulo', 'Av. Presidente Masaryk 111, Ciudad de Mexico', '11560', 'Espanol', 6, 'NO', 6);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Powells Book Clubs', '1005 W Burnside St, Portland', '97209', 'Ingles', 8, 'SI', 8);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Club de Lectores del Banco de la Republica Biblioteca Luis Angel Arango', 'Calle 11 4-14, Bogota', '11001', 'Espanol', 7, 'NO', 7);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Shakespeare and Company Reading Group', '37 Rue de la Bucherie, Paris', '75005', 'Frances', 2, 'SI', 2);
insert into sojg_club (nombre, direccion, codigo_postal, idioma_del_club, id_ciudad, cuota_membresia, id_institucion)
    values ('Club de Lectura de la Biblioteca Vasconcelos', 'Av. Cuitlahuac 2000, Ciudad de Mexico', '02000', 'Espanol', 6, 'NO', 6);
commit;

-- ==========================================
-- Inserts ASOCIACION (11 registros)
-- ==========================================
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (1, 2, to_date('15/01/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (1, 4, to_date('15/01/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (1, 6, to_date('20/01/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (1, 8, to_date('20/01/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (2, 4, to_date('01/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (2, 6, to_date('01/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (2, 8, to_date('10/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (4, 6, to_date('10/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (4, 8, to_date('15/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (6, 8, to_date('15/02/2026', 'DD/MM/YYYY'));
insert into sojg_asociacion (id_club_1, id_club_2, fecha_asociacion) values (3, 5, to_date('01/03/2026', 'DD/MM/YYYY'));
commit;

-- ==========================================
-- Inserts LECTOR (96 registros)
-- ==========================================
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Andres', 'Bolivar', to_date('15/03/1990', 'DD/MM/YYYY'), 'Espanol', 'andres.bolivar@gmail.com', 'V-00000001');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Claire', 'Dupont', to_date('22/07/1985', 'DD/MM/YYYY'), 'Frances, Ingles', 'claire.dupont@gmail.com', 'V-00000002');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Diego', 'Morales', to_date('10/11/1978', 'DD/MM/YYYY'), 'Espanol, Ingles', 'diego.morales@gmail.com', 'V-00000003');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Natasha', 'Ivanova', to_date('05/06/1995', 'DD/MM/YYYY'), 'Ruso, Ingles', 'natasha.ivanova@gmail.com', 'V-00000004');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Samuel', 'Johnson', to_date('30/01/2005', 'DD/MM/YYYY'), 'Ingles', 'samuel.johnson@gmail.com', 'V-00000005');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Valentina', 'Cruz', to_date('18/09/2003', 'DD/MM/YYYY'), 'Espanol', 'valentina.cruz@gmail.com', 'V-00000006');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Lucas', 'Fernandez', to_date('12/04/2007', 'DD/MM/YYYY'), 'Espanol', 'lucas.fernandez@gmail.com', 'V-00000007');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Emma', 'Laurent', to_date('25/08/2005', 'DD/MM/YYYY'), 'Frances, Espanol', 'emma.laurent@gmail.com', 'V-00000008');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Sofia', 'Herrera', to_date('10/05/2015', 'DD/MM/YYYY'), 'Espanol', 'sofia.herrera@gmail.com', 'V-00000009', 'SI', 1);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Mateo', 'Gonzalez', to_date('22/09/2015', 'DD/MM/YYYY'), 'Espanol', 'mateo.gonzalez@gmail.com', 'V-00000010', 'SI', 2);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Mia', 'Mitchell', to_date('03/12/2016', 'DD/MM/YYYY'), 'Ingles', 'mia.mitchell@gmail.com', 'V-00000011', 'SI', 1);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Juan', 'Perez', to_date('15/06/2017', 'DD/MM/YYYY'), 'Espanol', 'juan.perez1@gmail.com', 'V-00000012', 'SI', 2);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Alice', 'Smith', to_date('14/02/1980', 'DD/MM/YYYY'), 'Ingles', 'alice.smith@gmail.com', 'E-00000013');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Carlos', 'Ruiz', to_date('03/08/1975', 'DD/MM/YYYY'), 'Espanol', 'carlos.ruiz@gmail.com', 'E-00000014');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Pedro', 'Alonso', to_date('20/11/1992', 'DD/MM/YYYY'), 'Espanol', 'pedro.alonso@gmail.com', 'E-00000015');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Lucia', 'Gomez', to_date('07/05/1988', 'DD/MM/YYYY'), 'Espanol', 'lucia.gomez@gmail.com', 'E-00000016');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Kevin', 'White', to_date('11/03/2005', 'DD/MM/YYYY'), 'Ingles', 'kevin.white@gmail.com', 'E-00000017');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Mariana', 'Vega', to_date('29/07/2003', 'DD/MM/YYYY'), 'Espanol', 'mariana.vega@gmail.com', 'E-00000018');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Laura', 'Castillo', to_date('16/09/2006', 'DD/MM/YYYY'), 'Espanol', 'laura.castillo@gmail.com', 'E-00000019');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Tomas', 'Ruiz', to_date('04/01/2007', 'DD/MM/YYYY'), 'Espanol', 'tomas.ruiz2@gmail.com', 'E-00000020');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Lily', 'Smith', to_date('08/04/2015', 'DD/MM/YYYY'), 'Ingles', 'lily.smith@gmail.com', 'E-00000021', 'SI', 13);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Roberto', 'Mendoza', to_date('17/11/2016', 'DD/MM/YYYY'), 'Espanol', 'roberto.mendoza@gmail.com', 'E-00000022', 'SI', 14);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Maria', 'Rivas', to_date('25/06/2015', 'DD/MM/YYYY'), 'Espanol', 'maria.rivas@gmail.com', 'E-00000023', 'SI', 3);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('John', 'Doe', to_date('30/08/2017', 'DD/MM/YYYY'), 'Ingles', 'john.doe@gmail.com', 'E-00000024', 'SI', 4);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Carmen', 'Silva', to_date('21/04/1983', 'DD/MM/YYYY'), 'Espanol, Ingles', 'carmen.silva@gmail.com', 'US-0000025');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Alejandro', 'Torres', to_date('09/12/1979', 'DD/MM/YYYY'), 'Espanol', 'alejandro.torres@gmail.com', 'US-0000026');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Emily', 'Clark', to_date('14/07/1990', 'DD/MM/YYYY'), 'Ingles', 'emily.clark@gmail.com', 'US-0000027');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Luis', 'Alvarez', to_date('02/03/1985', 'DD/MM/YYYY'), 'Espanol, Ingles', 'luis.alvarez@gmail.com', 'US-0000028');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Nicole', 'Brown', to_date('18/05/2004', 'DD/MM/YYYY'), 'Ingles', 'nicole.brown@gmail.com', 'US-0000029');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Diego', 'Gonzalez', to_date('07/09/2005', 'DD/MM/YYYY'), 'Espanol', 'diego.gonzalez2@gmail.com', 'US-0000030');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sarah', 'Mitchell', to_date('23/01/2006', 'DD/MM/YYYY'), 'Ingles', 'sarah.mitchell@gmail.com', 'US-0000031');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Pablo', 'Morales', to_date('11/11/2003', 'DD/MM/YYYY'), 'Espanol', 'pablo.morales@gmail.com', 'US-0000032');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Hector', 'Silva', to_date('05/03/2015', 'DD/MM/YYYY'), 'Espanol', 'hector.silva@gmail.com', 'US-0000033', 'SI', 25);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Laura', 'Rojas', to_date('19/08/2016', 'DD/MM/YYYY'), 'Espanol', 'laura.rojas@gmail.com', 'US-0000034', 'SI', 26);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Tomas', 'Castro', to_date('28/06/2015', 'DD/MM/YYYY'), 'Espanol', 'tomas.castro@gmail.com', 'US-0000035', 'SI', 5);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Ana', 'Diaz', to_date('12/02/2017', 'DD/MM/YYYY'), 'Espanol', 'ana.diaz@gmail.com', 'US-0000036', 'SI', 6);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Luis', 'Ramos', to_date('16/06/1981', 'DD/MM/YYYY'), 'Espanol', 'luis.ramos@gmail.com', 'M-00000037');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Elena', 'Soto', to_date('28/09/1977', 'DD/MM/YYYY'), 'Espanol', 'elena.soto@gmail.com', 'M-00000038');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Pablo', 'Marin', to_date('13/04/1993', 'DD/MM/YYYY'), 'Espanol', 'pablo.marin@gmail.com', 'M-00000039');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Lucia', 'Vargas', to_date('05/07/1986', 'DD/MM/YYYY'), 'Espanol', 'lucia.vargas@gmail.com', 'M-00000040');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Andres', 'Gil', to_date('22/02/2004', 'DD/MM/YYYY'), 'Espanol', 'andres.gil@gmail.com', 'M-00000041');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Paula', 'Reyes', to_date('10/10/2005', 'DD/MM/YYYY'), 'Espanol', 'paula.reyes@gmail.com', 'M-00000042');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Diego', 'Ortiz', to_date('31/07/2006', 'DD/MM/YYYY'), 'Espanol', 'diego.ortiz@gmail.com', 'M-00000043');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Rosa', 'Medina', to_date('08/05/2003', 'DD/MM/YYYY'), 'Espanol', 'rosa.medina@gmail.com', 'M-00000044');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Jorge', 'Vega', to_date('14/01/2015', 'DD/MM/YYYY'), 'Espanol', 'jorge.vega@gmail.com', 'M-00000045', 'SI', 37);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Clara', 'Rios', to_date('26/09/2016', 'DD/MM/YYYY'), 'Espanol', 'clara.rios@gmail.com', 'M-00000046', 'SI', 38);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Marcos', 'Navarro', to_date('03/12/2015', 'DD/MM/YYYY'), 'Espanol', 'marcos.navarro@gmail.com', 'M-00000047', 'SI', 7);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Leo', 'Silva', to_date('17/07/2017', 'DD/MM/YYYY'), 'Espanol', 'leo.silva@gmail.com', 'M-00000048', 'SI', 8);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Mia', 'Castro', to_date('11/03/1984', 'DD/MM/YYYY'), 'Ingles', 'mia.castro@gmail.com', 'US-0000049');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Noa', 'Diaz', to_date('24/08/1979', 'DD/MM/YYYY'), 'Ingles, Espanol', 'noa.diaz@gmail.com', 'US-0000050');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Hugo', 'Ramos', to_date('07/12/1991', 'DD/MM/YYYY'), 'Ingles', 'hugo.ramos@gmail.com', 'US-0000051');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Zoe', 'Soto', to_date('19/05/1987', 'DD/MM/YYYY'), 'Ingles', 'zoe.soto@gmail.com', 'US-0000052');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('James', 'Parker', to_date('06/06/2004', 'DD/MM/YYYY'), 'Ingles', 'james.parker@gmail.com', 'US-0000053');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Olivia', 'Scott', to_date('14/11/2005', 'DD/MM/YYYY'), 'Ingles', 'olivia.scott@gmail.com', 'US-0000054');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Ethan', 'Reed', to_date('30/03/2006', 'DD/MM/YYYY'), 'Ingles', 'ethan.reed@gmail.com', 'US-0000055');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sophia', 'Hall', to_date('22/08/2003', 'DD/MM/YYYY'), 'Ingles', 'sophia.hall@gmail.com', 'US-0000056');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Jack', 'Young', to_date('09/02/2015', 'DD/MM/YYYY'), 'Ingles', 'jack.young@gmail.com', 'US-0000057', 'SI', 49);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Ava', 'King', to_date('21/10/2016', 'DD/MM/YYYY'), 'Ingles', 'ava.king@gmail.com', 'US-0000058', 'SI', 50);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Liam', 'Wright', to_date('15/05/2015', 'DD/MM/YYYY'), 'Ingles', 'liam.wright@gmail.com', 'US-0000059', 'SI', 9);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Emma', 'Adams', to_date('03/09/2017', 'DD/MM/YYYY'), 'Ingles', 'emma.adams@gmail.com', 'US-0000060', 'SI', 10);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Camila', 'Ramirez', to_date('17/01/1982', 'DD/MM/YYYY'), 'Espanol', 'camila.ramirez@gmail.com', 'C-00000061');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Jorge', 'Benitez', to_date('06/09/1976', 'DD/MM/YYYY'), 'Espanol', 'jorge.benitez@gmail.com', 'C-00000062');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Paola', 'Guerrero', to_date('25/04/1994', 'DD/MM/YYYY'), 'Espanol', 'paola.guerrero@gmail.com', 'C-00000063');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Manuel', 'Cardona', to_date('12/07/1989', 'DD/MM/YYYY'), 'Espanol', 'manuel.cardona@gmail.com', 'C-00000064');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Isabella', 'Rojas', to_date('03/03/2004', 'DD/MM/YYYY'), 'Espanol', 'isabella.rojas@gmail.com', 'C-00000065');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sebastian', 'Mora', to_date('19/11/2005', 'DD/MM/YYYY'), 'Espanol', 'sebastian.mora@gmail.com', 'C-00000066');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Daniela', 'Pinto', to_date('08/07/2006', 'DD/MM/YYYY'), 'Espanol', 'daniela.pinto@gmail.com', 'C-00000067');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Santiago', 'Leal', to_date('27/01/2003', 'DD/MM/YYYY'), 'Espanol', 'santiago.leal@gmail.com', 'C-00000068');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Valeria', 'Suarez', to_date('14/06/2015', 'DD/MM/YYYY'), 'Espanol', 'valeria.suarez@gmail.com', 'C-00000069', 'SI', 61);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Tomas', 'Cano', to_date('28/12/2016', 'DD/MM/YYYY'), 'Espanol', 'tomas.cano@gmail.com', 'C-00000070', 'SI', 62);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Lucia', 'Varela', to_date('07/09/2015', 'DD/MM/YYYY'), 'Espanol', 'lucia.varela@gmail.com', 'C-00000071', 'SI', 11);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Felipe', 'Ospina', to_date('22/04/2017', 'DD/MM/YYYY'), 'Espanol', 'felipe.ospina@gmail.com', 'C-00000072', 'SI', 12);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Pierre', 'Moreau', to_date('30/05/1978', 'DD/MM/YYYY'), 'Frances', 'pierre.moreau@gmail.com', 'FR-0000073');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Marie', 'Lefevre', to_date('15/10/1983', 'DD/MM/YYYY'), 'Frances', 'marie.lefevre@gmail.com', 'FR-0000074');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Jean', 'Dubois', to_date('04/02/1991', 'DD/MM/YYYY'), 'Frances', 'jean.dubois@gmail.com', 'FR-0000075');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Sophie', 'Bernard', to_date('19/08/1987', 'DD/MM/YYYY'), 'Frances', 'sophie.bernard@gmail.com', 'FR-0000076');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Antoine', 'Petit', to_date('12/04/2004', 'DD/MM/YYYY'), 'Frances', 'antoine.petit@gmail.com', 'FR-0000077');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Camille', 'Simon', to_date('07/12/2005', 'DD/MM/YYYY'), 'Frances', 'camille.simon@gmail.com', 'FR-0000078');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Nicolas', 'Michel', to_date('23/06/2006', 'DD/MM/YYYY'), 'Frances', 'nicolas.michel@gmail.com', 'FR-0000079');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Chloe', 'Fontaine', to_date('11/03/2003', 'DD/MM/YYYY'), 'Frances', 'chloe.fontaine@gmail.com', 'FR-0000080');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Hugo', 'Blanc', to_date('16/07/2015', 'DD/MM/YYYY'), 'Frances', 'hugo.blanc@gmail.com', 'FR-0000081', 'SI', 73);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Lea', 'Garnier', to_date('02/01/2016', 'DD/MM/YYYY'), 'Frances', 'lea.garnier@gmail.com', 'FR-0000082', 'SI', 74);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Mathieu', 'Chevalier', to_date('28/10/2015', 'DD/MM/YYYY'), 'Frances', 'mathieu.chevalier@gmail.com', 'FR-0000083', 'SI', 13);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Juliette', 'Morin', to_date('09/05/2017', 'DD/MM/YYYY'), 'Frances', 'juliette.morin@gmail.com', 'FR-0000084', 'SI', 14);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Rodrigo', 'Estrada', to_date('23/11/1980', 'DD/MM/YYYY'), 'Espanol', 'rodrigo.estrada@gmail.com', 'M-00000085');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Fernanda', 'Lozano', to_date('28/04/1976', 'DD/MM/YYYY'), 'Espanol', 'fernanda.lozano@gmail.com', 'M-00000086');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Arturo', 'Villanueva', to_date('17/09/1993', 'DD/MM/YYYY'), 'Espanol', 'arturo.villanueva@gmail.com', 'M-00000087');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Gabriela', 'Pena', to_date('31/01/1988', 'DD/MM/YYYY'), 'Espanol', 'gabriela.pena@gmail.com', 'M-00000088');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Ximena', 'Fuentes', to_date('14/07/2004', 'DD/MM/YYYY'), 'Espanol', 'ximena.fuentes@gmail.com', 'M-00000089');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Emilio', 'Delgado', to_date('29/03/2005', 'DD/MM/YYYY'), 'Espanol', 'emilio.delgado@gmail.com', 'M-00000090');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Renata', 'Ibarra', to_date('18/11/2006', 'DD/MM/YYYY'), 'Espanol', 'renata.ibarra@gmail.com', 'M-00000091');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad)
    values ('Hector', 'Salinas', to_date('05/08/2003', 'DD/MM/YYYY'), 'Espanol', 'hector.salinas@gmail.com', 'M-00000092');
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Valentina', 'Montes', to_date('20/02/2015', 'DD/MM/YYYY'), 'Espanol', 'valentina.montes@gmail.com', 'M-00000093', 'SI', 85);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante_lector)
    values ('Diego', 'Reyes', to_date('11/09/2016', 'DD/MM/YYYY'), 'Espanol', 'diego.reyes@gmail.com', 'M-00000094', 'SI', 86);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Sofia', 'Acosta', to_date('26/06/2015', 'DD/MM/YYYY'), 'Espanol', 'sofia.acosta@gmail.com', 'M-00000095', 'SI', 15);
insert into sojg_lector (nombre, apellido, fecha_nacimiento, idiomas, correo_electronico, documento_identidad, autorizacion_representante, id_representante)
    values ('Pablo', 'Navarro', to_date('07/04/2017', 'DD/MM/YYYY'), 'Espanol', 'pablo.navarro@gmail.com', 'M-00000096', 'SI', 16);
commit;

-- ==========================================
-- Inserts TELEFONO (11 registros)
-- ==========================================
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4121234567', 'Celular', 1);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (33, '612345678', 'Celular', 2);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (57, '3001234567', 'Celular', 3);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (7, '9161234567', 'Celular', 4);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (1, '2121234567', 'Casa', 5);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4249876543', 'Celular', 6);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '4261234567', 'Celular', 7);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (33, '698765432', 'Celular', 8);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (52, '5541234567', 'Celular', 9);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (58, '2121234567', 'Casa', 10);
insert into sojg_telefono (codigo, numero, tipo, id_miembro) values (44, '7911234567', 'Celular', 11);
commit;

-- ==========================================
-- Inserts PREFERENCIA_LECTURA (288 registros - 3 por miembro)
-- ==========================================
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (1, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (2, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (3, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (4, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (5, 978016, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (6, 978009, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (7, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (8, 978008, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (9, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (10, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978006, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (11, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (12, 978011, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (12, 978005, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (12, 978003, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (13, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (13, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (13, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (14, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (14, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (14, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (15, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (15, 978006, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (15, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (16, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (16, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (16, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (17, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (17, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (17, 978008, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (18, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (18, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (18, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (19, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (19, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (19, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (20, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (20, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (20, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (21, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (21, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (21, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (22, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (22, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (22, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (23, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (23, 978014, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (23, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (24, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (24, 978007, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (24, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (25, 978015, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (25, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (25, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (26, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (26, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (26, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (27, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (27, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (27, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (28, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (28, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (28, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (29, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (29, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (29, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (30, 978006, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (30, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (30, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (31, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (31, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (31, 978016, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (32, 978013, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (32, 978005, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (32, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (33, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (33, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (33, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (34, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (34, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (34, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (35, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (35, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (35, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (36, 978013, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (36, 978005, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (36, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (37, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (37, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (37, 978010, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (38, 978011, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (38, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (38, 978016, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (39, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (39, 978007, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (39, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (40, 978015, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (40, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (40, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (41, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (41, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (41, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (42, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (42, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (42, 978010, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (43, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (43, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (43, 978010, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (44, 978013, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (44, 978006, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (44, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (45, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (45, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (45, 978008, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (46, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (46, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (46, 978001, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (47, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (47, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (47, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (48, 978006, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (48, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (48, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (49, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (49, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (49, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (50, 978013, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (50, 978007, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (50, 978010, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (51, 978015, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (51, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (51, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (52, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (52, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (52, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (53, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (53, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (53, 978009, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (54, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (54, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (54, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (55, 978011, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (55, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (55, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (56, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (56, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (56, 978008, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (57, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (57, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (57, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (58, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (58, 978016, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (58, 978013, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (59, 978006, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (59, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (59, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (60, 978010, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (60, 978014, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (60, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (61, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (61, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (61, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (62, 978006, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (62, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (62, 978013, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (63, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (63, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (63, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (64, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (64, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (64, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (65, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (65, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (65, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (66, 978010, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (66, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (66, 978001, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (67, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (67, 978015, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (67, 978010, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (68, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (68, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (68, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (69, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (69, 978014, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (69, 978002, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (70, 978005, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (70, 978003, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (70, 978011, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (71, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (71, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (71, 978003, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (72, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (72, 978016, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (72, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (73, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (73, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (73, 978009, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (74, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (74, 978012, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (74, 978005, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (75, 978013, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (75, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (75, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (76, 978012, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (76, 978008, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (76, 978009, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (77, 978015, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (77, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (77, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (78, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (78, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (78, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (79, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (79, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (79, 978009, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (80, 978008, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (80, 978010, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (80, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (81, 978001, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (81, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (81, 978012, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (82, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (82, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (82, 978016, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (83, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (83, 978014, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (83, 978006, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (84, 978003, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (84, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (84, 978004, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (85, 978009, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (85, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (85, 978008, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (86, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (86, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (86, 978003, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (87, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (87, 978004, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (87, 978013, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (88, 978016, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (88, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (88, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (89, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (89, 978002, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (89, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (90, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (90, 978006, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (90, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (91, 978014, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (91, 978008, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (91, 978016, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (92, 978002, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (92, 978011, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (92, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (93, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (93, 978001, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (93, 978007, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (94, 978011, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (94, 978013, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (94, 978014, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (95, 978004, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (95, 978016, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (95, 978015, 3);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (96, 978007, 1);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (96, 978009, 2);
insert into sojg_preferencia_lectura (id_miembro, isbn_libro, orden_preferencia) values (96, 978008, 3);
commit;

-- ==========================================
-- Inserts GRUPO_DE_LECTURA (24 grupos)
-- ==========================================
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (1, 101, to_date('10/01/2026', 'DD/MM/YYYY'), 'Adulto', 'Lunes', 18.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (1, 102, to_date('10/01/2026', 'DD/MM/YYYY'), 'Joven', 'Martes', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (1, 103, to_date('12/01/2026', 'DD/MM/YYYY'), 'Nino', 'Miercoles', 17.15);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (2, 201, to_date('15/01/2026', 'DD/MM/YYYY'), 'Adulto', 'Jueves', 19.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (2, 202, to_date('15/01/2026', 'DD/MM/YYYY'), 'Joven', 'Martes', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (2, 203, to_date('15/01/2026', 'DD/MM/YYYY'), 'Nino', 'Viernes', 17.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (3, 301, to_date('01/02/2026', 'DD/MM/YYYY'), 'Adulto', 'Viernes', 18.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (3, 302, to_date('01/02/2026', 'DD/MM/YYYY'), 'Joven', 'Lunes', 17.45);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (3, 303, to_date('01/02/2026', 'DD/MM/YYYY'), 'Nino', 'Miercoles', 17.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (4, 401, to_date('10/02/2026', 'DD/MM/YYYY'), 'Adulto', 'Martes', 18.5);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (4, 402, to_date('10/02/2026', 'DD/MM/YYYY'), 'Joven', 'Jueves', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (4, 403, to_date('12/02/2026', 'DD/MM/YYYY'), 'Nino', 'Lunes', 17.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (5, 501, to_date('20/02/2026', 'DD/MM/YYYY'), 'Adulto', 'Miercoles', 18.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (5, 502, to_date('20/02/2026', 'DD/MM/YYYY'), 'Joven', 'Lunes', 17.45);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (5, 503, to_date('20/02/2026', 'DD/MM/YYYY'), 'Nino', 'Viernes', 17.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (6, 601, to_date('01/03/2026', 'DD/MM/YYYY'), 'Adulto', 'Lunes', 19.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (6, 602, to_date('01/03/2026', 'DD/MM/YYYY'), 'Joven', 'Viernes', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (6, 603, to_date('05/03/2026', 'DD/MM/YYYY'), 'Nino', 'Martes', 17.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (7, 701, to_date('15/03/2026', 'DD/MM/YYYY'), 'Adulto', 'Miercoles', 18.0);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (7, 702, to_date('15/03/2026', 'DD/MM/YYYY'), 'Joven', 'Jueves', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (7, 703, to_date('15/03/2026', 'DD/MM/YYYY'), 'Nino', 'Lunes', 17.15);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (8, 801, to_date('22/03/2026', 'DD/MM/YYYY'), 'Adulto', 'Viernes', 18.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (8, 802, to_date('22/03/2026', 'DD/MM/YYYY'), 'Joven', 'Martes', 17.3);
insert into sojg_grupo_de_lectura (id_club, numero_de_grupo, fecha_de_creacion, categoria_edad, dia_reunion, hora_inicio)
    values (8, 803, to_date('22/03/2026', 'DD/MM/YYYY'), 'Nino', 'Jueves', 17.0);
commit;

-- ==========================================
-- Inserts HISTORICO_MEMBRESIA (96 registros)
-- ==========================================
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (1, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (2, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (3, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (4, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (5, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (6, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (7, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (8, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (9, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (10, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (11, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (12, 1, to_date('01/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (13, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (14, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (15, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (16, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (17, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (18, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (19, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (20, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (21, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (22, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (23, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (24, 2, to_date('05/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (25, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (26, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (27, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (28, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (29, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (30, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (31, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (32, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (33, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (34, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (35, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (36, 3, to_date('10/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (37, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (38, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (39, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (40, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (41, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (42, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (43, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (44, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (45, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (46, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (47, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (48, 4, to_date('15/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (49, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (50, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (51, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (52, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (53, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (54, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (55, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (56, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (57, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (58, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (59, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (60, 5, to_date('20/01/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (61, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (62, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (63, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (64, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (65, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (66, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (67, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (68, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (69, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (70, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (71, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (72, 6, to_date('01/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (73, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (74, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (75, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (76, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (77, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (78, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (79, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (80, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (81, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (82, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (83, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (84, 7, to_date('10/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (85, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (86, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (87, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (88, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (89, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (90, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (91, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (92, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (93, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (94, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (95, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
insert into sojg_historico_membresia (id_miembro, id_club, fecha_inicio_membresia, fecha_fin, estatus, motivo_retiro)
    values (96, 8, to_date('15/02/2026', 'DD/MM/YYYY'), null, 'Activa', null);
commit;

-- ==========================================
-- Inserts HISTORICO_GRUPO_LECTURA (96 registros)
-- ==========================================
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 1, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 2, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 3, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 101, to_date('01/01/2026', 'DD/MM/YYYY'), 4, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 102, to_date('01/01/2026', 'DD/MM/YYYY'), 5, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 102, to_date('01/01/2026', 'DD/MM/YYYY'), 6, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 102, to_date('01/01/2026', 'DD/MM/YYYY'), 7, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 102, to_date('01/01/2026', 'DD/MM/YYYY'), 8, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 103, to_date('01/01/2026', 'DD/MM/YYYY'), 9, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 103, to_date('01/01/2026', 'DD/MM/YYYY'), 10, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 103, to_date('01/01/2026', 'DD/MM/YYYY'), 11, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (1, 103, to_date('01/01/2026', 'DD/MM/YYYY'), 12, to_date('01/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 201, to_date('05/01/2026', 'DD/MM/YYYY'), 13, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 201, to_date('05/01/2026', 'DD/MM/YYYY'), 14, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 201, to_date('05/01/2026', 'DD/MM/YYYY'), 15, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 201, to_date('05/01/2026', 'DD/MM/YYYY'), 16, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 17, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 18, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 19, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 202, to_date('05/01/2026', 'DD/MM/YYYY'), 20, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 203, to_date('05/01/2026', 'DD/MM/YYYY'), 21, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 203, to_date('05/01/2026', 'DD/MM/YYYY'), 22, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 203, to_date('05/01/2026', 'DD/MM/YYYY'), 23, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (2, 203, to_date('05/01/2026', 'DD/MM/YYYY'), 24, to_date('05/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 301, to_date('10/01/2026', 'DD/MM/YYYY'), 25, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 301, to_date('10/01/2026', 'DD/MM/YYYY'), 26, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 301, to_date('10/01/2026', 'DD/MM/YYYY'), 27, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 301, to_date('10/01/2026', 'DD/MM/YYYY'), 28, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 302, to_date('10/01/2026', 'DD/MM/YYYY'), 29, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 302, to_date('10/01/2026', 'DD/MM/YYYY'), 30, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 302, to_date('10/01/2026', 'DD/MM/YYYY'), 31, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 302, to_date('10/01/2026', 'DD/MM/YYYY'), 32, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 33, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 34, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 35, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (3, 303, to_date('10/01/2026', 'DD/MM/YYYY'), 36, to_date('10/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 401, to_date('15/01/2026', 'DD/MM/YYYY'), 37, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 401, to_date('15/01/2026', 'DD/MM/YYYY'), 38, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 401, to_date('15/01/2026', 'DD/MM/YYYY'), 39, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 401, to_date('15/01/2026', 'DD/MM/YYYY'), 40, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 402, to_date('15/01/2026', 'DD/MM/YYYY'), 41, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 402, to_date('15/01/2026', 'DD/MM/YYYY'), 42, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 402, to_date('15/01/2026', 'DD/MM/YYYY'), 43, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 402, to_date('15/01/2026', 'DD/MM/YYYY'), 44, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 403, to_date('15/01/2026', 'DD/MM/YYYY'), 45, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 403, to_date('15/01/2026', 'DD/MM/YYYY'), 46, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 403, to_date('15/01/2026', 'DD/MM/YYYY'), 47, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (4, 403, to_date('15/01/2026', 'DD/MM/YYYY'), 48, to_date('15/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 501, to_date('20/01/2026', 'DD/MM/YYYY'), 49, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 501, to_date('20/01/2026', 'DD/MM/YYYY'), 50, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 501, to_date('20/01/2026', 'DD/MM/YYYY'), 51, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 501, to_date('20/01/2026', 'DD/MM/YYYY'), 52, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 502, to_date('20/01/2026', 'DD/MM/YYYY'), 53, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 502, to_date('20/01/2026', 'DD/MM/YYYY'), 54, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 502, to_date('20/01/2026', 'DD/MM/YYYY'), 55, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 502, to_date('20/01/2026', 'DD/MM/YYYY'), 56, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 503, to_date('20/01/2026', 'DD/MM/YYYY'), 57, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 503, to_date('20/01/2026', 'DD/MM/YYYY'), 58, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 503, to_date('20/01/2026', 'DD/MM/YYYY'), 59, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (5, 503, to_date('20/01/2026', 'DD/MM/YYYY'), 60, to_date('20/01/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 601, to_date('01/02/2026', 'DD/MM/YYYY'), 61, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 601, to_date('01/02/2026', 'DD/MM/YYYY'), 62, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 601, to_date('01/02/2026', 'DD/MM/YYYY'), 63, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 601, to_date('01/02/2026', 'DD/MM/YYYY'), 64, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 602, to_date('01/02/2026', 'DD/MM/YYYY'), 65, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 602, to_date('01/02/2026', 'DD/MM/YYYY'), 66, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 602, to_date('01/02/2026', 'DD/MM/YYYY'), 67, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 602, to_date('01/02/2026', 'DD/MM/YYYY'), 68, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 603, to_date('01/02/2026', 'DD/MM/YYYY'), 69, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 603, to_date('01/02/2026', 'DD/MM/YYYY'), 70, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 603, to_date('01/02/2026', 'DD/MM/YYYY'), 71, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (6, 603, to_date('01/02/2026', 'DD/MM/YYYY'), 72, to_date('01/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 701, to_date('10/02/2026', 'DD/MM/YYYY'), 73, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 701, to_date('10/02/2026', 'DD/MM/YYYY'), 74, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 701, to_date('10/02/2026', 'DD/MM/YYYY'), 75, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 701, to_date('10/02/2026', 'DD/MM/YYYY'), 76, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 702, to_date('10/02/2026', 'DD/MM/YYYY'), 77, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 702, to_date('10/02/2026', 'DD/MM/YYYY'), 78, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 702, to_date('10/02/2026', 'DD/MM/YYYY'), 79, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 702, to_date('10/02/2026', 'DD/MM/YYYY'), 80, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 703, to_date('10/02/2026', 'DD/MM/YYYY'), 81, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 703, to_date('10/02/2026', 'DD/MM/YYYY'), 82, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 703, to_date('10/02/2026', 'DD/MM/YYYY'), 83, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (7, 703, to_date('10/02/2026', 'DD/MM/YYYY'), 84, to_date('10/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 801, to_date('15/02/2026', 'DD/MM/YYYY'), 85, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 801, to_date('15/02/2026', 'DD/MM/YYYY'), 86, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 801, to_date('15/02/2026', 'DD/MM/YYYY'), 87, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 801, to_date('15/02/2026', 'DD/MM/YYYY'), 88, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 802, to_date('15/02/2026', 'DD/MM/YYYY'), 89, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 802, to_date('15/02/2026', 'DD/MM/YYYY'), 90, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 802, to_date('15/02/2026', 'DD/MM/YYYY'), 91, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 802, to_date('15/02/2026', 'DD/MM/YYYY'), 92, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 803, to_date('15/02/2026', 'DD/MM/YYYY'), 93, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 803, to_date('15/02/2026', 'DD/MM/YYYY'), 94, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 803, to_date('15/02/2026', 'DD/MM/YYYY'), 95, to_date('15/02/2026', 'DD/MM/YYYY'), null);
insert into sojg_historico_grupo_lectura (id_club, numero_de_grupo, fecha_inicio_membresia, id_miembro, fecha_inicio, fecha_fin)
    values (8, 803, to_date('15/02/2026', 'DD/MM/YYYY'), 96, to_date('15/02/2026', 'DD/MM/YYYY'), null);
commit;

-- ==========================================
-- Inserts PAGO_MEMBRESIA (48 registros - clubes con cuota SI)
-- ==========================================
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 1, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 2, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 3, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 4, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 5, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 6, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 7, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 8, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 9, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 10, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 11, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('01/01/2026', 'DD/MM/YYYY'), 100.00, 12, 1);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 25, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 26, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 27, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 28, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 29, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 30, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 31, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 32, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 33, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 34, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 35, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/01/2026', 'DD/MM/YYYY'), 100.00, 36, 3);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 49, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 50, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 51, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 52, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 53, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 54, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 55, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 56, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 57, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 58, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 59, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('20/01/2026', 'DD/MM/YYYY'), 100.00, 60, 5);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 73, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 74, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 75, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 76, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 77, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 78, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 79, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 80, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 81, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 82, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 83, 7);
insert into sojg_pago_membresia (fecha, monto, id_miembro, id_club)
    values (to_date('10/02/2026', 'DD/MM/YYYY'), 100.00, 84, 7);
commit;

-- ==========================================
-- Inserts CALENDARIO_MES (72 reuniones - 3 por grupo)
-- ==========================================
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 101, 978001, to_date('02/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 101, 978001, to_date('09/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 101, 978001, to_date('16/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 601, 978014, to_date('02/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 601, 978014, to_date('09/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 601, 978014, to_date('16/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 703, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 703, 978005, to_date('09/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 703, 978005, to_date('16/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 403, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 403, 978005, to_date('09/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 403, 978005, to_date('16/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 502, 978015, to_date('02/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 502, 978015, to_date('09/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 502, 978015, to_date('16/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 102, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 102, 978007, to_date('10/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 102, 978007, to_date('17/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 202, 978008, to_date('03/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 202, 978008, to_date('10/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 202, 978008, to_date('17/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 603, 978005, to_date('03/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 603, 978005, to_date('10/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 603, 978005, to_date('17/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 802, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 802, 978007, to_date('10/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 802, 978007, to_date('17/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 103, 978005, to_date('04/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 103, 978005, to_date('11/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (1, 103, 978005, to_date('18/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 1);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 501, 978009, to_date('04/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 501, 978009, to_date('11/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 501, 978009, to_date('18/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 701, 978012, to_date('04/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 701, 978012, to_date('11/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 701, 978012, to_date('18/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 201, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 201, 978002, to_date('12/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (2, 201, 978002, to_date('19/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 13);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 402, 978016, to_date('05/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 402, 978016, to_date('12/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 402, 978016, to_date('19/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 702, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 702, 978002, to_date('12/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (7, 702, 978002, to_date('19/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 73);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 803, 978005, to_date('05/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 803, 978005, to_date('12/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 803, 978005, to_date('19/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 301, 978003, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 301, 978003, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 301, 978003, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 302, 978011, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 302, 978011, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 302, 978011, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 303, 978013, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 303, 978013, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (3, 303, 978013, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 25);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 401, 978004, to_date('04/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 401, 978004, to_date('11/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (4, 401, 978004, to_date('18/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 37);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 503, 978005, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 503, 978005, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (5, 503, 978005, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion adaptada al nivel del grupo infantil con preguntas accesibles. Los niños participaron activamente y demostraron comprension de los temas principales de la obra.', 4.0, 'SI', 49);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 602, 978010, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 602, 978010, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (6, 602, 978010, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'Sesion muy animada con gran participacion de los jovenes lectores. Se conectaron los temas de la obra con situaciones actuales y se debatieron distintas interpretaciones con entusiasmo.', 4.0, 'SI', 61);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 801, 978001, to_date('06/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 801, 978001, to_date('13/03/2026', 'DD/MM/YYYY'), 'SI', null, null, 'NO', 85);
insert into sojg_calendario_mes (id_club, numero_de_grupo, isbn_libro, fecha_reunion, realizada, conclusiones, valoracion_final, ultima_discusion, id_moderador)
    values (8, 801, 978001, to_date('20/03/2026', 'DD/MM/YYYY'), 'SI', 'El grupo debatio extensamente los temas centrales de la obra, analizando la construccion de los personajes y su contexto historico. Se llego a conclusiones enriquecedoras sobre la vigencia del texto en la actualidad.', 4.0, 'SI', 85);
commit;

-- ==========================================
-- Inserts INASISTENCIA (patrones variados por grupo)
-- ==========================================
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 101, 978001, to_date('02/03/2026', 'DD/MM/YYYY'), 1);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 101, 978001, to_date('02/03/2026', 'DD/MM/YYYY'), 2);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 101, 978001, to_date('09/03/2026', 'DD/MM/YYYY'), 2);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 601, 978014, to_date('02/03/2026', 'DD/MM/YYYY'), 61);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 601, 978014, to_date('02/03/2026', 'DD/MM/YYYY'), 62);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 601, 978014, to_date('09/03/2026', 'DD/MM/YYYY'), 62);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 703, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 81);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 703, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 82);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 703, 978005, to_date('09/03/2026', 'DD/MM/YYYY'), 82);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 403, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 45);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 403, 978005, to_date('02/03/2026', 'DD/MM/YYYY'), 46);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 403, 978005, to_date('09/03/2026', 'DD/MM/YYYY'), 46);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 502, 978015, to_date('02/03/2026', 'DD/MM/YYYY'), 53);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 502, 978015, to_date('02/03/2026', 'DD/MM/YYYY'), 54);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 502, 978015, to_date('09/03/2026', 'DD/MM/YYYY'), 54);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 102, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 5);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 102, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 6);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 102, 978007, to_date('10/03/2026', 'DD/MM/YYYY'), 6);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 202, 978008, to_date('03/03/2026', 'DD/MM/YYYY'), 17);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 202, 978008, to_date('03/03/2026', 'DD/MM/YYYY'), 18);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 202, 978008, to_date('10/03/2026', 'DD/MM/YYYY'), 18);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 603, 978005, to_date('03/03/2026', 'DD/MM/YYYY'), 69);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 603, 978005, to_date('03/03/2026', 'DD/MM/YYYY'), 70);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 603, 978005, to_date('10/03/2026', 'DD/MM/YYYY'), 70);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 802, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 89);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 802, 978007, to_date('03/03/2026', 'DD/MM/YYYY'), 90);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 802, 978007, to_date('10/03/2026', 'DD/MM/YYYY'), 90);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 103, 978005, to_date('04/03/2026', 'DD/MM/YYYY'), 9);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 103, 978005, to_date('04/03/2026', 'DD/MM/YYYY'), 10);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (1, 103, 978005, to_date('11/03/2026', 'DD/MM/YYYY'), 10);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 501, 978009, to_date('04/03/2026', 'DD/MM/YYYY'), 49);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 501, 978009, to_date('04/03/2026', 'DD/MM/YYYY'), 50);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 501, 978009, to_date('11/03/2026', 'DD/MM/YYYY'), 50);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 701, 978012, to_date('04/03/2026', 'DD/MM/YYYY'), 73);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 701, 978012, to_date('04/03/2026', 'DD/MM/YYYY'), 74);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 701, 978012, to_date('11/03/2026', 'DD/MM/YYYY'), 74);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 201, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 13);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 201, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 14);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (2, 201, 978002, to_date('12/03/2026', 'DD/MM/YYYY'), 14);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 402, 978016, to_date('05/03/2026', 'DD/MM/YYYY'), 41);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 402, 978016, to_date('05/03/2026', 'DD/MM/YYYY'), 42);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 402, 978016, to_date('12/03/2026', 'DD/MM/YYYY'), 42);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 702, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 77);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 702, 978002, to_date('05/03/2026', 'DD/MM/YYYY'), 78);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (7, 702, 978002, to_date('12/03/2026', 'DD/MM/YYYY'), 78);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 803, 978005, to_date('05/03/2026', 'DD/MM/YYYY'), 93);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 803, 978005, to_date('05/03/2026', 'DD/MM/YYYY'), 94);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 803, 978005, to_date('12/03/2026', 'DD/MM/YYYY'), 94);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 301, 978003, to_date('06/03/2026', 'DD/MM/YYYY'), 25);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 301, 978003, to_date('06/03/2026', 'DD/MM/YYYY'), 26);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 301, 978003, to_date('13/03/2026', 'DD/MM/YYYY'), 26);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 302, 978011, to_date('06/03/2026', 'DD/MM/YYYY'), 29);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 302, 978011, to_date('06/03/2026', 'DD/MM/YYYY'), 30);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 302, 978011, to_date('13/03/2026', 'DD/MM/YYYY'), 30);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 303, 978013, to_date('06/03/2026', 'DD/MM/YYYY'), 33);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 303, 978013, to_date('06/03/2026', 'DD/MM/YYYY'), 34);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (3, 303, 978013, to_date('13/03/2026', 'DD/MM/YYYY'), 34);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 401, 978004, to_date('04/03/2026', 'DD/MM/YYYY'), 37);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 401, 978004, to_date('04/03/2026', 'DD/MM/YYYY'), 38);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (4, 401, 978004, to_date('11/03/2026', 'DD/MM/YYYY'), 38);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 503, 978005, to_date('06/03/2026', 'DD/MM/YYYY'), 57);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 503, 978005, to_date('06/03/2026', 'DD/MM/YYYY'), 58);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (5, 503, 978005, to_date('13/03/2026', 'DD/MM/YYYY'), 58);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 602, 978010, to_date('06/03/2026', 'DD/MM/YYYY'), 65);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 602, 978010, to_date('06/03/2026', 'DD/MM/YYYY'), 66);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (6, 602, 978010, to_date('13/03/2026', 'DD/MM/YYYY'), 66);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 801, 978001, to_date('06/03/2026', 'DD/MM/YYYY'), 85);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 801, 978001, to_date('06/03/2026', 'DD/MM/YYYY'), 86);
insert into sojg_inasistencia (id_club, numero_de_grupo, isbn_libro, fecha_reunion, id_miembro)
    values (8, 801, 978001, to_date('13/03/2026', 'DD/MM/YYYY'), 86);
commit;

-- ==========================================
-- Inserts OBRA (9 registros)
-- ==========================================
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('La locura de Alonso', 'SI', 'Adaptacion teatral de Don Quijote de la Mancha que explora la tension entre el idealismo desmedido y la realidad cotidiana. La obra sigue a Alonso Quijano en su transformacion en el caballero andante Don Quijote, acompanado de su fiel escudero Sancho Panza. A traves de una serie de episodios comicos y conmovedores, la produccion invita al publico a reflexionar sobre los limites entre la locura y la sabiduria, entre el sueno y la realidad. La puesta en escena incorpora elementos visuales que evocan la Espana del siglo XVII mientras mantiene una narrativa accesible y emocionalmente resonante para el publico contemporaneo. Entre actos el publico participara votando sobre las decisiones que toma Don Quijote, lo que puede cambiar el desenlace de algunos episodios. La obra tiene una duracion aproximada de dos horas con un intermedio.', 15.0, 1);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('La noche del conde', 'SI', 'Produccion teatral de suspenso y terror gotico basada en la novela Dracula de Bram Stoker. La obra recrea el viaje de Jonathan Harker a Transilvania y la posterior invasion del conde Dracula a la sociedad londinense. La puesta en escena utiliza efectos de iluminacion y sonido para crear una atmosfera opresiva y perturbadora que mantiene al publico en tension durante toda la representacion. La adaptacion pone especial enfasis en la dimension psicologica del horror, explorando el miedo al otro y a lo desconocido como fuerzas que amenazan el orden establecido. Entre actos el publico respondera preguntas sobre los crimenes del conde y votara sobre las estrategias que el grupo de cazavampiros debe seguir.', 20.0, 7);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('El principe de Dinamarca', 'SI', 'Adaptacion contemporanea de Hamlet de William Shakespeare que traslada la tragedia del principe danes a un entorno corporativo moderno. El conflicto central entre Hamlet y su tio Claudio, quien ha usurpado el trono asesinando a su padre, se reinterpreta como una lucha de poder en una gran corporacion familiar. La obra conserva los temas esenciales del original shakesperiano: la venganza, la traicion, la corrupcion del poder y la paralisis ante la accion. Los celebres monologos de Hamlet son adaptados al lenguaje contemporaneo manteniendo su profundidad filosofica. La interaccion con el publico incluye momentos donde los asistentes votan sobre si Hamlet debe actuar o continuar investigando.', 18.0, 3);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('La criatura', 'NO', 'Produccion teatral basada en Frankenstein de Mary Shelley que explora los limites eticos de la ciencia y la responsabilidad del creador hacia su creacion. La obra sigue al joven cientifico Victor Frankenstein en su obsesion por vencer a la muerte, creando un ser humano a partir de partes de cadaveres. El punto de vista narrativo alterna entre Frankenstein y su criatura, permitiendo al publico empatizar con ambos personajes y comprender las motivaciones que los llevan al conflicto inevitable. La produccion destaca la soledad y el rechazo como fuerzas corruptoras capaces de transformar la inocencia en monstruosidad. Esta obra ya no esta en cartelera activa pero fue una de las producciones mas aclamadas del club.', 12.0, 5);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('Jean Valjean', 'SI', 'Adaptacion teatral de Los miserables de Victor Hugo que sigue la extraordinaria historia de redencion de Jean Valjean, un ex presidiario que lucha por reconstruir su vida con dignidad en una sociedad que no esta dispuesta a perdonar su pasado. La obra captura los momentos mas emotivos de la novela, desde la transformacion moral de Valjean tras el acto de generosidad del obispo Myriel hasta su sacrificio final por la felicidad de Cosette y Marius. La produccion incluye escenas que retratan la miseria de los barrios parisinos del siglo XIX y la violencia de la revolucion de 1832, creando un contraste visual poderoso entre la belleza del ideal republicano y el costo humano de su busqueda.', 10.0, 2);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('El absurdo de Meursault', 'SI', 'Adaptacion teatral de El extranjero de Albert Camus que lleva al escenario la historia del indiferente Meursault, un hombre que vive al margen de las convenciones emocionales y morales de su sociedad. La obra explora con crudeza la filosofia del absurdo camusiana, planteando al publico preguntas incomodas sobre la autenticidad, la libertad y la inevitabilidad de la muerte. La puesta en escena utiliza un escenario minimalista que refuerza la sensacion de vacio existencial que permea la obra. Entre actos el publico participa en un simulacro de juicio donde debe decidir si condenaria a Meursault y por que razones.', 8.0, 6);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('La culpa de Raskolnikov', 'NO', 'Produccion teatral basada en Crimen y castigo de Fiodor Dostoyevski que explora el deterioro psicologico de Rodion Raskolnikov tras cometer un asesinato motivado por su teoria del hombre extraordinario. La obra se enfoca en el conflicto interno del protagonista, dividido entre la arrogancia intelectual que justifico su crimen y la culpa que lo consume desde adentro. La puesta en escena utiliza recursos expresionistas para representar el estado mental fragmentado de Raskolnikov, con escenas que oscilan entre la realidad y las alucinaciones. La figura del investigador Porfiry Petrovich es presentada como un antagonista sofisticado.', 14.0, 1);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('La institutriz de Thornfield', 'SI', 'Adaptacion teatral de Jane Eyre de Charlotte Bronte que sigue la historia de una joven huerfana que se convierte en institutriz en la misteriosa mansion de Thornfield Hall. La obra captura la esencia del romance gotico original mientras enfatiza la extraordinaria fortaleza moral e independencia de Jane como protagonista. La relacion entre Jane y el tormentoso senor Rochester es presentada con toda su complejidad emocional, explorando como dos almas heridas encuentran en el otro un refugio y una provocacion simultaneos. El secreto del atico de Thornfield funciona como elemento de suspenso que mantiene al publico en tension hasta el desenlace.', 10.0, 4);
insert into sojg_obra (titulo_de_obra, activa, descripcion_de_la_obra, costo_entrada, id_club)
    values ('El sueno de Gatsby', 'SI', 'Adaptacion teatral de El gran Gatsby de F. Scott Fitzgerald que recrea el esplendor y la decadencia de los anos veinte norteamericanos. La obra sigue la obsesion de Jay Gatsby por recuperar el pasado y conquistar el amor de Daisy Buchanan, utilizando su misteriosa fortuna como instrumento de seduccion social. La puesta en escena recrea con lujo de detalles las extravagantes fiestas de la mansion de Gatsby en Long Island, creando un contraste visual deslumbrante con la grisacea realidad del valle de las cenizas. La produccion incluye musica de jazz de la epoca para crear una atmosfera autentica.', 16.0, 3);
commit;

-- ==========================================
-- Inserts LIBRO_REFERENCIADO_POR_LA_OBRA (9 registros)
-- ==========================================
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (1, 978001);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (2, 978012);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (3, 978006);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (4, 978013);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (5, 978002);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (6, 978014);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (7, 978009);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (8, 978004);
insert into sojg_libro_referenciado_por_la_obra (id_obra, isbn_libro) values (9, 978008);
commit;

-- ==========================================
-- Inserts ELENCO (18 registros)
-- ==========================================
insert into sojg_elenco (id_obra, id_miembro) values (1, 1);
insert into sojg_elenco (id_obra, id_miembro) values (1, 5);
insert into sojg_elenco (id_obra, id_miembro) values (1, 6);
insert into sojg_elenco (id_obra, id_miembro) values (2, 73);
insert into sojg_elenco (id_obra, id_miembro) values (2, 77);
insert into sojg_elenco (id_obra, id_miembro) values (3, 25);
insert into sojg_elenco (id_obra, id_miembro) values (3, 29);
insert into sojg_elenco (id_obra, id_miembro) values (4, 49);
insert into sojg_elenco (id_obra, id_miembro) values (4, 53);
insert into sojg_elenco (id_obra, id_miembro) values (5, 13);
insert into sojg_elenco (id_obra, id_miembro) values (5, 17);
insert into sojg_elenco (id_obra, id_miembro) values (6, 61);
insert into sojg_elenco (id_obra, id_miembro) values (6, 65);
insert into sojg_elenco (id_obra, id_miembro) values (7, 1);
insert into sojg_elenco (id_obra, id_miembro) values (7, 5);
insert into sojg_elenco (id_obra, id_miembro) values (8, 37);
insert into sojg_elenco (id_obra, id_miembro) values (8, 41);
insert into sojg_elenco (id_obra, id_miembro) values (9, 25);
insert into sojg_elenco (id_obra, id_miembro) values (9, 29);
commit;

-- ==========================================
-- Inserts PRESENTACION_DE_LA_OBRA (9 registros)
-- ==========================================
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (1, to_date('20/03/2026', 'DD/MM/YYYY'), 4.5, 80);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (2, to_date('22/03/2026', 'DD/MM/YYYY'), 4.8, 95);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (3, to_date('25/03/2026', 'DD/MM/YYYY'), 4.2, 60);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (4, to_date('10/02/2026', 'DD/MM/YYYY'), 3.8, 45);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (5, to_date('28/03/2026', 'DD/MM/YYYY'), 4.6, 70);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (6, to_date('01/04/2026', 'DD/MM/YYYY'), 4.3, 55);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (7, to_date('15/01/2026', 'DD/MM/YYYY'), 4.0, 40);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (8, to_date('05/04/2026', 'DD/MM/YYYY'), 4.1, 65);
insert into sojg_presentacion_de_la_obra (id_obra, fecha, valoracion, cantidad_asistentes)
    values (9, to_date('10/04/2026', 'DD/MM/YYYY'), 4.7, 90);
commit;

-- ==========================================
-- Inserts MEJOR_ACTOR (10 registros)
-- ==========================================
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (1, 1, to_date('20/03/2026', 'DD/MM/YYYY'), 45);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (1, 5, to_date('20/03/2026', 'DD/MM/YYYY'), 35);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (2, 73, to_date('22/03/2026', 'DD/MM/YYYY'), 60);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (3, 25, to_date('25/03/2026', 'DD/MM/YYYY'), 38);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (5, 13, to_date('28/03/2026', 'DD/MM/YYYY'), 42);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (6, 61, to_date('01/04/2026', 'DD/MM/YYYY'), 28);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (6, 65, to_date('01/04/2026', 'DD/MM/YYYY'), 28);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (7, 1, to_date('15/01/2026', 'DD/MM/YYYY'), 30);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (8, 37, to_date('05/04/2026', 'DD/MM/YYYY'), 40);
insert into sojg_mejor_actor (id_obra, id_miembro, fecha_presentacion, votos)
    values (9, 25, to_date('10/04/2026', 'DD/MM/YYYY'), 55);
commit;
