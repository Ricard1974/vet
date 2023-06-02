
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamano` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apariencia_fisica` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `esperanza_vida` int DEFAULT NULL,
  `enfermedades_geneticas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `historia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notas_adicionales` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `raza_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `caracteristicas_raza_id_foreign` (`raza_id`),
  KEY `tipo_id` (`tipo_id`),
  CONSTRAINT `caracteristicas_raza_id_foreign` FOREIGN KEY (`raza_id`) REFERENCES `razas` (`id`),
  CONSTRAINT `caracteristicas_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `caracteristicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas` DISABLE KEYS */;
INSERT INTO `caracteristicas` VALUES (4,NULL,'Sudeste Asiático','Mediano','El color del manto del gato siamés es conocido como \"colorpoint\". Tienen un cuerpo de color claro, generalmente crema o blanco, con extremidades, cara, orejas y cola de color más oscuro, como el marrón, azul, lila o chocolate. ',' Los siameses tienen un cuerpo esbelto y musculoso, con patas largas y delgadas. Tienen una cabeza en forma de cuña, con orejas grandes y puntiagudas. Sus ojos son de forma almendrada y de color azul intenso.',14,'Algunas enfermedades genéticas que pueden afectar a los siameses incluyen la miocardiopatía hipertrófica, el estrabismo, la sordera congénita y la amiloidosis. Es importante obtener un gato de un criador responsable que realice pruebas genéticas para detectar y prevenir estas enfermedades.','El gato siamés tiene una larga historia y se cree que ha existido en Tailandia durante siglos. Se mencionan en antiguos textos tailandeses y se les considera gatos sagrados en la cultura tailandesa. Fueron llevados a Europa y Estados Unidos en el siglo XIX, donde se volvieron populares como gatos de exhibición y mascotas.','Los siameses son conocidos por su personalidad extrovertida y vocal. Son gatos cariñosos y sociables que disfrutan de la compañía humana. También son conocidos por ser inteligentes y enérgicos, lo que los convierte en compañeros divertidos y activos.',13,'2023-05-23 19:57:56','2023-05-29 16:41:34',1),(5,NULL,'Europa Occidental','Mediano','Pueden tener una amplia variedad de colores y patrones, incluyendo sólidos, atigrados, bicolor y punteado.','Los gatos Scottish Fold se caracterizan por sus orejas plegadas hacia adelante y hacia abajo, dándoles un aspecto único. Tienen un cuerpo robusto y musculoso, con patas cortas y una cabeza redonda. Su pelaje es denso y suave.',14,'Algunos Scottish Fold pueden presentar problemas de salud asociados con la mutación genética que afecta sus orejas plegadas, como enfermedades del oído y problemas articulares. Es importante obtener un gato de un criador responsable que seleccione cuidadosamente los ejemplares para evitar problemas genéticos.','La raza Scottish Fold se originó en Escocia en la década de 1960. El primer gato con orejas plegadas fue descubierto en una granja escocesa. La característica de las orejas plegadas es el resultado de una mutación genética natural. Los Scottish Fold ganaron popularidad rápidamente debido a su apariencia única y encantadora.',NULL,12,'2023-05-25 10:35:51','2023-05-29 16:35:33',1),(6,NULL,'Norteamérica','Mediano','Los Sphynx pueden presentar una amplia variedad de colores y patrones, incluyendo sólidos, atigrados, bicolor y punteado. Su piel sin pelo permite apreciar los patrones y colores de su epidermis.','Los Sphynx son conocidos por su falta de pelaje. Tienen una piel arrugada y caliente al tacto, con una textura similar al cuero. Su cuerpo es musculoso, con patas largas y una cola delgada. Tienen orejas grandes y prominentes, y sus ojos suelen ser de tamaño medio a grande.',14,'Los Sphynx pueden ser propensos a algunas condiciones de salud, como problemas cardíacos y enfermedades de la piel. También pueden requerir cuidados especiales para proteger su piel desnuda de la exposición al sol y la temperatura.','El gato Sphynx es el resultado de una mutación natural que se produjo en la década de 1960 en Ontario, Canadá. Una gata doméstica dio a luz a un gatito sin pelo, y a partir de ahí se comenzó a criar selectivamente la raza Sphynx. Se realizaron cruces cuidadosos para desarrollar y establecer la raza, y en 1998 fue reconocida por las principales asociaciones felinas.','Debido a su falta de pelaje, los Sphynx requieren cuidados especiales para mantener su piel en buen estado. Necesitan baños regulares para eliminar el exceso de aceite en la piel y protegerla de la suciedad. También pueden necesitar protección adicional contra el frío y la exposición solar.',10,'2023-05-25 10:38:34','2023-05-29 16:39:07',1),(7,NULL,'Norteamérica','Grande','Los Maine Coon pueden presentar una amplia variedad de colores y patrones, incluyendo sólidos, atigrados, tabby, bicolor y punteado. ','Los Maine Coon tienen un cuerpo largo, musculoso y robusto. Tienen patas fuertes y grandes, adaptadas para caminar sobre la nieve. Su cabeza es ancha y con forma de cuña, con orejas grandes y tupidas. Tienen ojos grandes y expresivos, generalmente de color verde o dorado.',14,'Algunas enfermedades genéticas que pueden afectar a los Maine Coon incluyen la cardiomiopatía hipertrófica, la displasia de cadera y la poliquistosis renal. Es importante obtener un gato de un criador responsable que realice pruebas genéticas para detectar y prevenir estas enfermedades.','La historia exacta del origen del Maine Coon no está del todo clara. Se cree que se desarrolló a partir de cruces entre gatos domésticos y gatos de pelo largo traídos por los marineros a las costas de Maine. Los Maine Coon eran populares como gatos de granja y compañeros de trabajo, conocidos por su habilidad para cazar roedores.','Los Maine Coon son conocidos por ser gatos amigables, sociables y adaptables. Son buenos compañeros para familias y se llevan bien con otros animales. También se destacan por su pelaje denso y suave, que les proporciona protección contra el frío.',8,'2023-05-29 16:47:15','2023-05-29 16:47:15',1),(8,NULL,'Europa Occidental','Pequeño','Los Affenpinscher pueden tener diversos colores de pelaje, incluyendo negro, gris, plata, negro y fuego, o incluso mezclas de estos colores.','Los Affenpinscher tienen una apariencia distintiva y única. Tienen una cabeza redonda con una expresión vivaz y ojos oscuros y redondos. Sus orejas son pequeñas y se mantienen erectas. Su pelaje es áspero y denso, con una barba prominente y cejas espesas.',13,'Algunas enfermedades que pueden afectar a los Affenpinscher incluyen problemas dentales, luxación rotuliana, enfermedad cardíaca y problemas oculares. Es importante realizar revisiones veterinarias regulares y brindarles una alimentación adecuada y cuidados dentales para prevenir posibles enfermedades.','El Affenpinscher es una raza antigua que se originó en Alemania en la época medieval. Inicialmente se criaban para cazar ratones y otras plagas en los hogares y granjas. A lo largo de los años, su popularidad ha aumentado como perro de compañía y de exposición.','Los Affenpinscher son perros valientes, activos e inteligentes. A pesar de su tamaño pequeño, tienen una personalidad fuerte y un temperamento terrier. Son buenos compañeros y se llevan bien con niños y otras mascotas cuando se les socializa adecuadamente desde cachorros.',1,'2023-05-29 16:50:29','2023-05-29 16:50:29',2),(9,NULL,'Europa Occidental','Grande','El Airedale Terrier tiene un pelaje áspero y denso, que generalmente es de color negro en la parte superior del cuerpo y en las orejas, y de color fuego en las patas, el pecho y la cabeza. Algunos ejemplares pueden presentar manchas blancas en el pecho.','El Airedale Terrier tiene una estructura fuerte y musculosa. Su cabeza es alargada y plana, con ojos oscuros y orejas en forma de \"V\" que se mantienen erectas. Su cola es de inserción alta y se lleva en alto. Presenta un pelaje duro y áspero que requiere un cuidado regular.',11,'Algunas enfermedades que pueden afectar a los Airedale Terrier incluyen displasia de cadera, enfermedades de la piel, problemas oculares y enfermedades cardíacas. Es importante realizar revisiones veterinarias regulares y brindarles una alimentación adecuada para prevenir posibles enfermedades.','El Airedale Terrier es considerado el \"Rey de los Terriers\" debido a su tamaño y versatilidad. Fue originalmente criado para cazar nutrias y ratas en las orillas del río Aire. A lo largo de los años, ha ganado popularidad como perro de compañía y también ha sido utilizado en tareas de búsqueda y rescate.','Los Airedale Terrier son perros valientes, inteligentes y leales. Son conocidos por su energía y entusiasmo, y requieren una estimulación mental y ejercicio físico adecuados. Son buenos compañeros para familias activas y se llevan bien con niños cuando se les socializa adecuadamente.',2,'2023-05-29 16:53:11','2023-05-29 16:53:11',2),(10,NULL,'Norteamérica','Mediano','Los American Cocker Spaniel pueden tener una amplia variedad de colores de pelaje, incluyendo negro, dorado, rojo, marrón, blanco, entre otros. También pueden presentar combinaciones de colores y manchas.','El American Cocker Spaniel tiene una cabeza redondeada, orejas largas y caídas, y ojos grandes y expresivos. Su pelaje es largo y sedoso, con una capa interna más densa. Su cola es de inserción baja y se lleva en alto.',14,'Algunas enfermedades que pueden afectar a los American Cocker Spaniel incluyen problemas oculares, como cataratas y displasia de retina, enfermedades de oído, como otitis, y problemas cardíacos.',' El American Cocker Spaniel se desarrolló en Estados Unidos a partir de la raza británica del Cocker Spaniel. A lo largo de los años, se han criado líneas de sangre específicas para destacar las características deseadas en la raza.','Los American Cocker Spaniel son perros amigables, alegres y llenos de energía. Son excelentes compañeros y se llevan bien con niños y otras mascotas cuando se les socializa adecuadamente desde cachorros. Requieren ejercicio diario y cuidado regular de su pelaje largo y sedoso.',3,'2023-05-29 16:55:20','2023-05-29 16:55:20',2);
/*!40000 ALTER TABLE `caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Categoria Perros','categoria-perros','2023-05-19 14:02:15','2023-05-21 19:46:27'),(2,'Categoria Gatos','categoria-gatos','2023-05-19 14:02:20','2023-05-21 19:46:47'),(3,'Categoria Reptiles','categoria-reptiles','2023-05-22 19:13:56','2023-05-22 19:13:56'),(4,'Categoria Insectos','categoria-insectos','2023-05-22 19:14:06','2023-05-22 19:14:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `posicion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (4,'Veterinario','Manu','Martinez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-05-23 08:42:23','2023-05-23 08:42:23'),(5,'Ayudante Veterinario','Marta','Ferina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-05-23 09:40:20','2023-05-23 09:40:20'),(6,'Administrativa','Silvia','Molina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-05-23 09:40:56','2023-05-23 09:40:56');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `galerias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galerias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `galerias` WRITE;
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
INSERT INTO `galerias` VALUES (12,'Perro peque','perro-peque',1,'2023-05-23 09:30:25','2023-05-23 09:30:25'),(13,'Gato 3 colores','gato-3-colores',1,'2023-05-23 09:30:53','2023-05-23 09:30:53'),(14,'Tortuga ','tortuga',1,'2023-05-23 09:31:14','2023-05-23 09:31:14'),(15,'Conejos','conejos',1,'2023-05-23 09:38:30','2023-05-23 09:38:30');
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tituloblog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `textoblog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'Nombre d ela empresa','666999666','La dirección db','ricardmagnet@gmail.com','ricardev.es','Aplicación en Laravel','Algunas de las tecnologías usadas en este proyectyo personal son las siguientes:','Posts creados en el Dashboard','Qualisque erroribus usu at, duo te agam soluta mucius.','2023-05-23 08:32:02','2023-05-23 08:32:02');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (45,'App\\Models\\Equipo',4,'faee8606-8d77-47f8-bdd0-d202b1a10d58','equipo','th-991019842','e6U5XQVAt5yyMTreytnIV2Za6LGzOA-metadGgtOTkxMDE5ODQyLmpwZw==-.jpg','image/jpeg','public','public',27758,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 08:56:30','2023-05-23 08:56:30'),(46,'App\\Models\\Galeria',12,'0c3ad784-ddc6-4867-9874-0249a03e83c5','galeria','th-407937598','CVO7GMqSTFjI6wcpIjf7m17ADQuFW0-metadGgtNDA3OTM3NTk4LmpwZw==-.jpg','image/jpeg','public','public',17592,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:30:26','2023-05-23 09:30:26'),(47,'App\\Models\\Galeria',13,'37e82130-3f6e-47fd-a963-007f8efdf379','galeria','th-852490034','iDgkMhgJl3lKw6HOXDpWBJojHj4zbK-metadGgtODUyNDkwMDM0LmpwZw==-.jpg','image/jpeg','public','public',13532,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:30:53','2023-05-23 09:30:53'),(48,'App\\Models\\Galeria',14,'8f2b03fa-b262-4b31-9846-daf1ef358650','galeria','th-3264220534','fTuZoWbKwWlrcTgwlQ900q3hNJoEQI-metadGgtMzI2NDIyMDUzNC5qcGc=-.jpg','image/jpeg','public','public',16179,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:31:14','2023-05-23 09:31:14'),(49,'App\\Models\\Post',3,'d83cf3f2-ad60-42a3-8198-f86a2fadd725','post','th-2378575724','rC1H8An7tBKMfzlZRcBHt8RQahBiOk-metadGgtMjM3ODU3NTcyNC5qcGc=-.jpg','image/jpeg','public','public',33506,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:33:31','2023-05-23 09:33:32'),(50,'App\\Models\\Post',5,'888cf34f-3b91-4066-ac04-935e2bb7d30a','post','th-1683571702','640ltI4RT6AJb0RNdJChv5EcNUrCQO-metadGgtMTY4MzU3MTcwMi5qcGc=-.jpg','image/jpeg','public','public',16789,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:34:00','2023-05-23 09:34:01'),(51,'App\\Models\\Post',2,'5439da73-d0c0-4547-aa44-2c5f3b12630a','post','th-3264220534','QjziZ829T8YJHy5il3aNA8Yh1NKJhN-metadGgtMzI2NDIyMDUzNC5qcGc=-.jpg','image/jpeg','public','public',16179,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:36:31','2023-05-23 09:36:31'),(52,'App\\Models\\Post',4,'9925058b-6c80-4464-adae-d3490c5aa4ef','post','th-205282982','P3crUX3z1MOWGfn07oTgDNFzNFDPFc-metadGgtMjA1MjgyOTgyLmpwZw==-.jpg','image/jpeg','public','public',18658,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:37:16','2023-05-23 09:37:16'),(53,'App\\Models\\Galeria',15,'918e17d6-8114-4494-8d2a-b63e1e6af56e','galeria','th-2811016966','DrKFAnpriBWvuAK4bQXPDRRbBe8tRT-metadGgtMjgxMTAxNjk2Ni5qcGc=-.jpg','image/jpeg','public','public',43909,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:38:30','2023-05-23 09:38:31'),(54,'App\\Models\\Equipo',5,'216d9f2d-2be5-4308-babd-843bab337b9d','equipo','th-2153306204','YOSCNxL15UZVWpxfhFmQfVAkmAQ8rC-metadGgtMjE1MzMwNjIwNC5qcGc=-.jpg','image/jpeg','public','public',21428,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:40:20','2023-05-23 09:40:20'),(55,'App\\Models\\Equipo',6,'d88e6cd4-c328-4a37-b231-f24ccf78b292','equipo','th-1683661138','OtpAkwCzRAaz5LUCTLYKv1Ca4dHfv9-metadGgtMTY4MzY2MTEzOC5qcGc=-.jpg','image/jpeg','public','public',21278,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 09:40:56','2023-05-23 09:40:57'),(56,'App\\Models\\Raza',1,'1910df06-b2be-4464-adfb-b590559b784d','raza','Affenpinscher2','3OCE4ZikKNYqkAAs8dIFRsP1rPNxBm-metaQWZmZW5waW5zY2hlcjIucG5n-.png','image/png','public','public',550297,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:29:32','2023-05-23 18:29:33'),(57,'App\\Models\\Raza',2,'c6ff9dfc-251f-401e-996c-c44cce824828','raza','Airedale-Terrier','MZMFpWqF4Ho9yq46s0AVjQZtDs7N81-metaQWlyZWRhbGUtVGVycmllci5qcGc=-.jpg','image/jpeg','public','public',182913,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:31:47','2023-05-23 18:31:48'),(58,'App\\Models\\Raza',3,'2221d7d3-e07f-4271-af8f-0b9d6af31bd3','raza','American-Cocker-Spaniel','4iOFUyuckOpItH4RTOSFa3i0WvYYlT-metaQW1lcmljYW4tQ29ja2VyLVNwYW5pZWwuanBn-.jpg','image/jpeg','public','public',843636,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:33:45','2023-05-23 18:33:45'),(59,'App\\Models\\Raza',4,'1980c83d-e04d-49dc-a088-94bd0a9714a8','raza','Akita','D0tQu9kdTkEBGNIk6rHIwktYwRavy0-metaQWtpdGEuanBn-.jpg','image/jpeg','public','public',29382,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:34:48','2023-05-23 18:34:48'),(60,'App\\Models\\Raza',5,'2658b3fd-2631-4ac6-86e1-e8a01e403304','raza','Alaskan Malamute','Xlq2xkdWGQXkQphQrYUrNxDuSa3F6c-metaQWxhc2thbiBNYWxhbXV0ZS5qcGc=-.jpg','image/jpeg','public','public',12992,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:37:55','2023-05-23 18:37:55'),(61,'App\\Models\\Raza',6,'30cdbe6e-e5f2-4866-bf06-6c8fe34a4e16','raza','American Bulldog','zxmQDNQquS5qaz20zKU73dxUBX6g9h-metaQW1lcmljYW4gQnVsbGRvZy5qcGc=-.jpg','image/jpeg','public','public',13972,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:40:23','2023-05-23 18:40:23'),(62,'App\\Models\\Raza',7,'92c56138-0073-47f9-82bd-f6650b2b45b1','raza','Bengal','xSkkXrPg6ppCiUs1Hf4Td2XANe5oz8-metaQmVuZ2FsLmpwZw==-.jpg','image/jpeg','public','public',20476,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:41:19','2023-05-23 18:41:20'),(63,'App\\Models\\Raza',8,'1efd539a-a707-46cf-a16b-de1a7d0ca9b6','raza','Maine Coon','E3wTpm9jrhS9tGJg2FwNY1PhWQeOJc-metaTWFpbmUgQ29vbi5qcGc=-.jpg','image/jpeg','public','public',26162,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:43:01','2023-05-23 18:43:01'),(64,'App\\Models\\Raza',9,'3c3f5ead-3f56-4108-be12-8ca5fc698601','raza','Ragdoll','1LWdLWJsbPuaM1NHnYNauZFFTulCHx-metaUmFnZG9sbC5qcGc=-.jpg','image/jpeg','public','public',152856,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:44:30','2023-05-23 18:44:30'),(65,'App\\Models\\Raza',10,'52a1be0e-afe6-4c6e-b922-b13ae954b2ae','raza','Sphynx','Jzt0CRLq9njD5singOur6D4Mz94p6H-metaU3BoeW54LmpwZw==-.jpg','image/jpeg','public','public',64369,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:45:17','2023-05-23 18:45:18'),(66,'App\\Models\\Raza',11,'4ed3a259-cbfb-4955-a59d-f8a5f6e5d668','raza','Savannah','ybJedFsgK2P51tAJy6Okkn5vrL9xqc-metaU2F2YW5uYWguanBn-.jpg','image/jpeg','public','public',19437,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:46:13','2023-05-23 18:46:13'),(67,'App\\Models\\Raza',12,'0668d25e-c174-45fa-a0db-295df0c4669b','raza','Scottish Fold','woIGh5KlX3G2Y1BihOuSrpg2dwQS53-metaU2NvdHRpc2ggRm9sZC5qcGc=-.jpg','image/jpeg','public','public',17953,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:46:57','2023-05-23 18:46:57'),(68,'App\\Models\\Raza',13,'987f7557-c508-48b6-88bd-10c71d7828a2','raza','Siamese','VSx7MKclYcqhr7Az7bbcVXtbM31jxI-metaU2lhbWVzZS5qcGc=-.jpg','image/jpeg','public','public',59216,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:50:14','2023-05-23 18:50:14'),(69,'App\\Models\\Raza',14,'92c1927c-3b4d-4d51-b2ae-f8a0afb1d8df','raza','Abyssinian','8h2hThRqxAl38X8Vmx3pmrKflF6a4W-metaQWJ5c3Npbmlhbi5qcGc=-.jpg','image/jpeg','public','public',46585,'[]','[]','{\"thumb\": true}','[]',1,'2023-05-23 18:51:21','2023-05-23 18:51:21');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_20_193811_create_owners_table',1),(6,'2023_02_20_193905_create_patients_table',1),(7,'2023_02_20_193924_create_treatments_table',1),(8,'2023_03_20_222055_create_proveedors_table',1),(9,'2023_03_21_153443_create_media_table',1),(10,'2023_03_28_204410_create_categories_table',1),(11,'2023_03_28_204413_create_posts_table',1),(12,'2023_03_28_204424_create_tags_table',1),(13,'2023_03_28_204516_create_post_tag_table',1),(14,'2023_04_05_144715_create_permission_tables',1),(15,'2023_04_28_120703_create_timex_tables',1),(16,'2023_05_05_160501_create_equipos_table',1),(17,'2023_05_09_143206_create_infos_table',1),(18,'2023_05_09_172821_create_galerias_table',1),(19,'posts_table',2),(20,'table_post',3),(21,'2023_05_23_134701_create_tipo_animales_table',4),(22,'2023_05_23_142603_create_tipo_animales_table',5),(23,'2023_05_23_142653_create_razas_table',5),(24,'2023_05_23_142804_create_caracteristicas_razas_table',5),(25,'2023_05_23_151306_create_tipo_animales_table',6),(26,'2023_05_23_151517_create_razas_table',6),(27,'2023_05_23_151928_create_caracteristicas_razas_table',6),(28,'2023_05_23_151306_create_tipo_animals_table',7),(29,'2023_05_23_155612_create_tipos_table',8),(30,'2023_05_23_155700_create_razas_table',8),(31,'2023_05_23_155727_create_caracteristicas_table',8),(32,'2023_05_23_181942_drop_table_caracteristicas',9),(33,'2023_05_23_182529_drop_table_caracteristicas',10),(34,'2023_05_23_182719_create_table_caracteristicas',11),(35,'2023_05_23_182747_create_caracteristicas_table',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App\\Models\\User',3),(1,'App\\Models\\User',4),(2,'App\\Models\\User',5),(3,'App\\Models\\User',22),(4,'App\\Models\\User',23),(5,'App\\Models\\User',24),(6,'App\\Models\\User',25);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Jesús','Rojo','henriquez.cristian@example.com','Carrer De la Cruz, 70, 3º 7º, 30712, Muro del Vallès','11571','Valle de Lemos','Finlandia','+34 945-11-0844','2023-05-19 13:00:27','2023-05-19 13:00:27'),(2,'Ismael','Lozano','margarita.baeza@example.net','Calle Patiño, 2, 7º D, 07812, Os Gimeno','80356','O Santiago del Pozo','Camerún','949457207','2023-05-19 13:00:27','2023-05-19 13:00:27'),(3,'Yeray','Rincón','esther.pascual@example.net','Carrer Joel, 8, 28º F, 89607, L\' Escobedo','74310','Alfonso del Barco','Mali','+34 901 91 5235','2023-05-19 13:00:27','2023-05-19 13:00:27'),(4,'Adriana','Véliz','enrique17@example.net','Ronda Nadia, 59, 11º C, 29584, L\' Suárez Alta','92450','Vall Conde del Bages','Nauru','929 71 9166','2023-05-19 13:00:27','2023-05-19 13:00:27'),(5,'Encarnación','Espinal','unai11@example.org','Ronda Francisco, 4, 72º F, 12388, L\' Espinosa del Mirador','27606','San Canales','Grecia','+34 972 51 3398','2023-05-19 13:00:27','2023-05-19 13:00:27'),(6,'Alma','Beltrán','salma44@example.com','Avinguda María Ángeles, 633, 5º 1º, 90310, San Gaytán','64650','Lomeli Medio','Panamá','+34 902 89 3176','2023-05-19 13:00:27','2023-05-19 13:00:27'),(7,'Jimena','Alonzo','sauceda.sergio@example.com','Paseo Hugo, 447, 3º B, 77632, L\' Olivárez','67770','Las Gaytán','Sierra Leona','923 107403','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8,'Valeria','Alaniz','hurtado.adrian@example.net','Rúa Isaac, 363, 0º B, 35669, Los Abad','31128','Barrera de Ulla','Chipre','930 614278','2023-05-19 13:00:27','2023-05-19 13:00:27'),(9,'Ona','Salcedo','jorge.castillo@example.org','Avenida Valdez, 200, 7º B, 66472, El Quintana Baja','22812','San Villanueva del Vallès','Birmania','+34 950-16-5396','2023-05-19 13:00:27','2023-05-19 13:00:27'),(10,'Iván','Duarte','cfajardo@example.org','Paseo José, 269, 7º, 15789, Domingo del Pozo','71677','Esparza del Puerto','Guinea-Bisáu','+34 993-09-5860','2023-05-19 13:00:27','2023-05-19 13:00:27');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_of_birth` date DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patients_owner_id_foreign` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'1997-08-06','corrupti','Reptil','3.94','452659700',4,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(2,'1970-07-31','recusandae','Reptil','6.02','307973064',2,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(3,'1986-06-19','maiores','Reptil','1.7','494679442',6,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(4,'1974-03-21','officia','Reptil','1.82','294889371',4,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(5,'1970-05-16','eveniet','Gato','3.33','372534395',6,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(6,'1973-07-30','adipisci','Gato','4.23','476231380',7,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(7,'1978-02-02','ipsa','Perro','4.63','665313095',2,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(8,'2021-01-21','ipsum','Perro','6.88','828028349',3,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(9,'2012-03-11','laudantium','Gato','5.69','613287604',7,'2023-05-19 13:00:27','2023-05-19 13:00:27'),(10,'1982-02-19','quasi','Perro','1.28','511450811',7,'2023-05-19 13:00:27','2023-05-19 13:00:27');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'permiso 1','web','2023-04-27 10:30:34','2023-04-27 10:30:34');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__bookmark` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__bookmark` WRITE;
/*!40000 ALTER TABLE `pma__bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__bookmark` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__central_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__central_columns` WRITE;
/*!40000 ALTER TABLE `pma__central_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__central_columns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__column_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__column_info` WRITE;
/*!40000 ALTER TABLE `pma__column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__column_info` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__designer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__designer_settings` WRITE;
/*!40000 ALTER TABLE `pma__designer_settings` DISABLE KEYS */;
INSERT INTO `pma__designer_settings` VALUES ('root','{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');
/*!40000 ALTER TABLE `pma__designer_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__export_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__export_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__export_templates` WRITE;
/*!40000 ALTER TABLE `pma__export_templates` DISABLE KEYS */;
INSERT INTO `pma__export_templates` VALUES (1,'root','database','tot','{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"caracteristicas\",\"categories\",\"equipos\",\"failed_jobs\",\"galerias\",\"infos\",\"media\",\"migrations\",\"model_has_permissions\",\"model_has_roles\",\"owners\",\"password_reset_tokens\",\"patients\",\"permissions\",\"personal_access_tokens\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"posts\",\"post_tag\",\"proveedors\",\"razas\",\"roles\",\"role_has_permissions\",\"table_caracteristicas\",\"tags\",\"timex_categories\",\"timex_events\",\"tipos\",\"treatments\",\"users\"],\"table_structure[]\":[\"caracteristicas\",\"categories\",\"equipos\",\"failed_jobs\",\"galerias\",\"infos\",\"media\",\"migrations\",\"model_has_permissions\",\"model_has_roles\",\"owners\",\"password_reset_tokens\",\"patients\",\"permissions\",\"personal_access_tokens\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"posts\",\"post_tag\",\"proveedors\",\"razas\",\"roles\",\"role_has_permissions\",\"table_caracteristicas\",\"tags\",\"timex_categories\",\"timex_events\",\"tipos\",\"treatments\",\"users\"],\"table_data[]\":[\"caracteristicas\",\"categories\",\"equipos\",\"failed_jobs\",\"galerias\",\"infos\",\"media\",\"migrations\",\"model_has_permissions\",\"model_has_roles\",\"owners\",\"password_reset_tokens\",\"patients\",\"permissions\",\"personal_access_tokens\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"posts\",\"post_tag\",\"proveedors\",\"razas\",\"roles\",\"role_has_permissions\",\"table_caracteristicas\",\"tags\",\"timex_categories\",\"timex_events\",\"tipos\",\"treatments\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');
/*!40000 ALTER TABLE `pma__export_templates` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__favorite` WRITE;
/*!40000 ALTER TABLE `pma__favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__favorite` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__history` WRITE;
/*!40000 ALTER TABLE `pma__history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__history` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__navigationhiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__navigationhiding` WRITE;
/*!40000 ALTER TABLE `pma__navigationhiding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__navigationhiding` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma__pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__recent` WRITE;
/*!40000 ALTER TABLE `pma__recent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__recent` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__relation` WRITE;
/*!40000 ALTER TABLE `pma__relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__relation` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__savedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__savedsearches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__savedsearches` WRITE;
/*!40000 ALTER TABLE `pma__savedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__savedsearches` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__table_coords` WRITE;
/*!40000 ALTER TABLE `pma__table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_coords` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__table_info` WRITE;
/*!40000 ALTER TABLE `pma__table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_info` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma__table_uiprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__tracking` WRITE;
/*!40000 ALTER TABLE `pma__tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__tracking` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__userconfig` WRITE;
/*!40000 ALTER TABLE `pma__userconfig` DISABLE KEYS */;
INSERT INTO `pma__userconfig` VALUES ('root','2023-05-30 22:30:02','{\"ThemeDefault\":\"metro\",\"lang\":\"es\",\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":177}');
/*!40000 ALTER TABLE `pma__userconfig` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__usergroups` WRITE;
/*!40000 ALTER TABLE `pma__usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__usergroups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pma__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pma__users` WRITE;
/*!40000 ALTER TABLE `pma__users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tag` (
  `post_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,2,NULL,NULL),(1,1,NULL,NULL),(3,1,NULL,NULL),(5,5,NULL,NULL),(5,1,NULL,NULL),(2,3,NULL,NULL),(4,4,NULL,NULL),(4,5,NULL,NULL);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_tag_id_foreign` (`tag_id`),
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,3,NULL,'Similique et illo.','similique-et-illo','Pero Villeneuve, que estaba de no haber podido rescatar el \"San Agustín\", de 80, mandado por D. Miguel de Zapiaín, parecía no tener maldito recelo, yo, que soy perro viejo en la cámara, mi amo como.',1,'2023-05-23 09:28:37','2023-05-23 09:36:31'),(3,1,NULL,'Aut dolore quaerat.','aut-dolore-quaerat','Explicaré mis pensamientos reproducida por los más horrendos vocablos, y a mí se me ha dado razón de su novio, de su egoísmo; y como tiene un peluquero para rizar la gavia, y carga las velas habían.',1,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(4,2,NULL,'Veritatis rem et in.','veritatis-rem-et-in','Dios manda... - Pues cuando yo le examinaba con cierto abandono en que se las pelaban un buen rato estuve absorto en la cabeza. Cuidado con lo útil. La sociedad en que se hace cargo de aquellos.',1,'2023-05-23 09:28:37','2023-05-23 09:37:16'),(5,1,NULL,'Ad eius adipisci.','ad-eius-adipisci','Vengo tan sólo el espacio de agua salada salpicadas por el costado. En un minuto la tripulación poco diestra, la nueva línea no era cosa fácil, habiendo precisión de amputarlos, quedándose sin.',1,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(6,1,NULL,'Ducimus aut amet et.','ducimus-aut-amet-et','Su mujer, Marcial, hasta yo mismo, extralimitándome en mis venas y erizando mis cabellos. Eran los heridos a la escasa luz del crepúsculo, lo cual no deseaba otra cosa. Nuestra marina quedó al fin.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(7,1,NULL,'Commodi consequatur.','commodi-consequatur','Ana\" y \"Royal Sovereign\", que mandaba Collingwood. Mientras trababa combate con este el \"Santa Ana\", y que la alianza con Francia, y el \"San Ildefonso\", que ha sido vilmente engañado, y mi mayor.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(8,1,NULL,'Et eius molestiae.','et-eius-molestiae','Cuando cayó muerto a los buques guerreros de hoy, cubiertos con el león de Castilla, y entonces respirábamos con la alegría que mi herida era mortal y que hoy cubren mi cabeza no podía ganarse ya.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(9,1,NULL,'Quidem aperiam.','quidem-aperiam','Gravina fue el templo lugar muy a prisa y me marché a la exigencia de Villeneuve. Y digo esto, menoscabando quizás la aureola que el navío iba a poner en pie, y hablando en tono ceremonioso.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(10,1,NULL,'Asperiores laborum.','asperiores-laborum','La sangre de las cosas antiguas; muy devota, aunque no con la cabeza del primer soldado... ¿Comprende usted?... Como la línea era tan fuerte, que perdimos de vista el lóbrego espacio que nos.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(11,1,NULL,'Laudantium aut.','laudantium-aut','Nada más grandioso que la veo sonreír delante de mí, fui a ver si vemos\" lo que les servía de ilustre mortaja parecía ponerles fuera de aquella manera en Cádiz, y ellos tratarán de forzar la.',0,'2023-05-23 09:28:37','2023-05-23 09:33:06'),(12,1,NULL,'Quia tempore quasi.','quia-tempore-quasi','Nelson nos convida a echar unas cañas». Esto pasaba en el mundo. Así es que se perdió la batalla- prosiguió Malespina- , ya sabe usted que aquí traigo en la falúa y seis años, como cuando fuiste a.',0,'2023-05-23 09:28:37','2023-05-23 09:33:04'),(13,1,NULL,'Minima rem modi ea.','minima-rem-modi-ea','Dios de mis desgracias. Aquellos señores me tomaron bajo su protección, librándome de la Caleta. Mas al saber la muerte de Marcial te ha calentado los cascos anoche y esta ocupación, muy grata para.',0,'2023-05-23 09:28:37','2023-05-23 09:33:01'),(14,1,NULL,'Accusamus ut.','accusamus-ut','Villeneuve no lo dijera a nadie? ¡Horribles contradicciones de la navegación a todos los desastres son para nosotros. - Entonces, tontos rematados, ¿para qué se os calientan las pajarillas con esta.',0,'2023-05-23 09:28:37','2023-05-23 09:33:00'),(15,1,NULL,'Aliquam consectetur.','aliquam-consectetur','Doña Francisca entró de súbito en el viaje fue todo lo perdido y asegure a nuestra fragata, y tras ella, conducido amorosamente, el navío \"Rayo\" pasaba por babor y al orden imperfecto con que me.',0,'2023-05-23 09:28:37','2023-05-23 09:32:58'),(16,1,NULL,'Quos doloribus qui.','quos-doloribus-qui','Las más no se rinde!». De fijo fue la voz de su propia inventiva filológica, de él uno de los pañoles al entrepuente por medio del... ¿A que no sirves para maldita de Dios compré algunas golosinas.',0,'2023-05-23 09:28:37','2023-05-23 09:32:55'),(17,1,NULL,'Voluptatem.','voluptatem','No puedo recordar a sin espanto, y por eso no dejaba de gallardearme con los repetidos golpes de su muerte, pues es indudable que la roció excitaron más aún la vena inventora del viejo Malespina.',0,'2023-05-23 09:28:37','2023-05-23 09:32:52'),(18,1,NULL,'Nesciunt unde ut.','nesciunt-unde-ut','De todos modos, ¿no era lógico suponer que estén en alguna parte». Malespina dijo que desgraciadamente él había salvado a todos bajo el amplio pabellón de la navegación de aquella su infantil.',0,'2023-05-23 09:28:37','2023-05-23 09:32:51'),(19,1,NULL,'Dolores et sed non.','dolores-et-sed-non','Ana\" había tenido en el \"Bahama\". Desde que quedó viuda, se mantenía y me dijo que \"anque\" no estaba allí. Gravemente herido de poca gravedad, y aunque su esposa con amor, aunque no podía haber.',0,'2023-05-23 09:28:37','2023-05-23 09:32:57'),(20,1,NULL,'Commodi earum aut.','commodi-earum-aut','Estaban tristes y acongojadas anunciándonos una desgracia, y a mí me ofendían los aplausos de sus actos se mostraron caballeros, magnánimos y generosos. »El número de presas. Los despojos de la.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37'),(21,1,NULL,'Libero quia.','libero-quia','Cádiz o a la mar o en San Fernando. Como nunca pude satisfacer mi curiosidad, pregunté al grumete que estaba decidido a ello, apresando inoportunamente cuatro fragatas que venían de América cargadas.',0,'2023-05-23 09:28:37','2023-05-23 09:28:37');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `proveedors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `www` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `proveedors` WRITE;
/*!40000 ALTER TABLE `proveedors` DISABLE KEYS */;
INSERT INTO `proveedors` VALUES (8000,'Caldera de Gaytán e Hijos','Miguel Ángel','','+34 983-279037','+34 987-23-3979','','Paseo Negrete, 794, Ático 5º','CIF-76924','NIF-26841','http://www.aviles.com/autem-excepturi-enim-facilis-vel-minima-iste','guillem11@example.org','Iure nesciunt id voluptate. Occaecati veniam temporibus eum error sint quia. Debitis dolorum nemo natus eum. Cupiditate totam illo soluta aut delectus voluptatem est.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8001,'Empresa Chacón-De Anda','Iker','','997-263397','+34 921 84 3050','','Ruela Aguilar, 59, 92º F','CIF-11521','NIF-79323','http://macias.com/maiores-quas-non-occaecati-tempora-suscipit-et-maxime','aleix83@example.org','Iusto ea eaque minima. Et aliquam omnis quam non totam omnis. Excepturi consequuntur possimus fugiat maiores sit. Iusto a facilis omnis delectus rerum.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8002,'Oliver y Serrano','Marco','','945 641188','+34 930 836887','','Avinguda Joel, 20, 65º A','CIF-08128','NIF-02375','http://www.zamora.com.es/','mascarenas.sonia@example.org','Veritatis ut nulla aut officia. Quia et autem dicta ut voluptatibus beatae voluptatibus.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8003,'Zamora, Valentín y Montalvo SRL','Daniel','','969 164983','955-06-9966','','Calle Guillem, 41, 4º A','CIF-38558','NIF-39563','http://valadez.net/voluptatem-ex-est-assumenda-dolores-sit.html','sonia.solorio@example.com','Omnis repellat est quos neque modi qui. Sed error et debitis. Voluptatum suscipit quae velit in libero molestias voluptatem. Itaque numquam iure autem nemo voluptates natus.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8004,'Tirado y Bermúdez S. de H.','Jesús','','948-257617','945910198','','Paseo Pedraza, 91, Bajo 6º','CIF-87718','NIF-50501','https://www.montanez.org/expedita-modi-asperiores-excepturi-distinctio','herrero.oriol@example.com','Facilis consectetur in rerum autem molestias itaque cumque. Quos nihil est qui sit. Qui debitis nesciunt eum hic aut ut qui. Sit harum praesentium sit veritatis laudantium.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8005,'Soto-Villa','Pedro','','938-68-6476','+34 927-233462','','Travessera Margarita, 3, Entre suelo 9º','CIF-47761','NIF-89306','http://domingo.com/voluptas-dicta-id-earum','ismael.candelaria@example.org','Enim in consequuntur odio ut est quibusdam consequatur. Enim ut minima quia exercitationem id quia. Ex maiores porro recusandae error eos molestias veniam eius. Non voluptas ut id ad.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8006,'Corporación Salinas','Hugo','','+34 932-22-5070','+34 926261898','','Camino Alanis, 899, 68º D','CIF-56447','NIF-96546','http://barela.com/','ignacio.domingo@example.org','Aut inventore non nemo cumque voluptatem sint cumque. Quam omnis et blanditiis voluptas enim. Error qui occaecati minus dolor incidunt. Commodi molestias quae sapiente mollitia sapiente est.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8007,'Cuevas de Camarillo e Hija','Marco','','+34 948-03-9165','+34 916340032','','Travessera Lara, 90, 7º A','CIF-63646','NIF-03894','http://mora.com/','mrobledo@example.net','Optio dolores quia fugiat eos praesentium. Iure corporis quae qui nihil ipsum sit. Vero quia enim veniam autem in mollitia.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8008,'Soler-Oliver e Hija','Iker','','+34 906 755570','992832803','','Ronda Alanis, 2, 3º E','CIF-49705','NIF-03597','http://vega.es/quia-nulla-cumque-recusandae.html','cervantez.izan@example.com','Assumenda voluptatibus aut consequatur ab. Voluptatem sed nostrum animi fugit eius dolorem accusantium sit. Odio qui mollitia cupiditate.','2023-05-19 13:00:27','2023-05-19 13:00:27'),(8009,'Empresa Sancho e Hijo','Yago','','+34 944-012534','985-26-7892','','Carrer Jon, 511, 5º A','CIF-95999','NIF-59996','https://luque.com/fugiat-consequatur-aut-molestias-doloremque-tempore.html','puente.nuria@example.org','Dignissimos consequatur rerum eius. Nostrum vel a fugiat velit sunt. Voluptatem veniam voluptatem omnis eos neque error. Laboriosam sint corporis repellat quia aut sunt.','2023-05-19 13:00:27','2023-05-19 13:00:27');
/*!40000 ALTER TABLE `proveedors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `razas_tipo_id_foreign` (`tipo_id`),
  CONSTRAINT `razas_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `razas` WRITE;
/*!40000 ALTER TABLE `razas` DISABLE KEYS */;
INSERT INTO `razas` VALUES (1,'Affenpinscher',2,'2023-05-23 14:38:00','2023-05-23 14:38:00'),(2,'Airedale Terrier',2,'2023-05-23 16:55:27','2023-05-23 16:55:27'),(3,'American Cocker Spaniel',2,'2023-05-23 17:04:16','2023-05-23 17:04:48'),(4,'Akita',2,'2023-05-23 17:06:20','2023-05-23 17:06:20'),(5,'Alaskan Malamute',2,'2023-05-23 17:06:44','2023-05-23 17:06:44'),(6,'American Bulldog',2,'2023-05-23 17:07:08','2023-05-23 17:07:08'),(7,'Bengal',1,'2023-05-23 17:07:52','2023-05-23 17:07:52'),(8,'Maine Coon',1,'2023-05-23 17:08:11','2023-05-23 17:08:11'),(9,'Ragdoll',1,'2023-05-23 17:08:25','2023-05-23 17:08:25'),(10,'Sphynx',1,'2023-05-23 17:08:46','2023-05-23 17:08:46'),(11,'Savannah',1,'2023-05-23 17:08:59','2023-05-23 17:08:59'),(12,'Scottish Fold',1,'2023-05-23 17:09:19','2023-05-23 17:09:19'),(13,'Siamese',1,'2023-05-23 17:09:32','2023-05-23 17:09:32'),(14,'Abyssinian',1,'2023-05-23 17:09:42','2023-05-23 17:09:42'),(15,'American Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(16,'Balinese',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(17,'Birman',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(18,'British Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(19,'Burmese',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(20,'Chartreux',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(21,'Cornish Rex',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(22,'Devon Rex',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(23,'Egyptian Mau',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(24,'Exotic Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(25,'Havana Brown',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(26,'Japanese Bobtail',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(27,'Norwegian Forest Cat',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(28,'Oriental Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(29,'Persian',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(30,'Russian Blue',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(31,'Siberian',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(32,'Somali',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(33,'Tonkinese',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(34,'Turkish Angora',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(35,'Turkish Van',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(36,'American Bobtail',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(37,'American Curl',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(38,'American Wirehair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(39,'Australian Mist',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(40,'Balinese-Javanese',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(41,'Bengaline',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(42,'Bombay',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(43,'Brazilian Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(44,'British Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(45,'Burmilla',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(46,'Chausie',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(47,'Cheetoh',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(48,'Cymric',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(49,'Desert Lynx',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(50,'Dwelf',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(51,'Highlander',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(52,'Kinkalow',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(53,'Kurilian Bobtail',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(54,'Lambkin',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(55,'Lykoi',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(56,'Minuet',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(57,'Napoleon',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(58,'Ojos Azules',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(59,'Ojos Azules Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(60,'Pixiebob',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(61,'Ragamuffin',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(62,'Serengeti',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(63,'Skookum',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(64,'Sokoke',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(65,'Tennessee Rex',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(66,'Thai',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(67,'Toyger',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(68,'Ukrainian Levkoy',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(69,'York Chocolate',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(70,'Aegean',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(71,'Arabian Mau',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(72,'Asian',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(73,'Asian Semi-Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(74,'Bambino',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(75,'Burmilla Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(76,'California Spangled',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(77,'Chantilly/Tiffany',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(78,'Colorpoint Shorthair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(79,'German Rex',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(80,'German Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(81,'Khao Manee',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(82,'Korat',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(83,'Minskin',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(84,'Nebelung',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(85,'Ocicat',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(86,'Peterbald',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(87,'RagaMuffin Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(88,'Scottish Fold Longhair',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(89,'Seychellois',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(90,'Singapura',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(91,'Snowshoe',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(92,'Sphynxiebob',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(93,'Thai Lilac',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(94,'Thai Lilac Tortie',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(95,'Thai Seal Lynx Point',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(96,'Thai Seal Sepia Point',1,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(97,'American Eskimo Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(98,'American Foxhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(99,'American Pit Bull Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(100,'American Staffordshire Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(101,'American Water Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(102,'Anatolian Shepherd Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(103,'Australian Cattle Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(104,'Australian Shepherd',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(105,'Australian Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(106,'Basenji',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(107,'Basset Hound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(108,'Beagle',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(109,'Bearded Collie',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(110,'Beauceron',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(111,'Bedlington Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(112,'Belgian Malinois',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(113,'Belgian Sheepdog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(114,'Belgian Tervuren',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(115,'Bernese Mountain Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(116,'Bichon Frise',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(117,'Black and Tan Coonhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(118,'Black Russian Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(119,'Bloodhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(120,'Border Collie',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(121,'Border Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(122,'Borzoi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(123,'Boston Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(124,'Bouvier des Flandres',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(125,'Boxer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(126,'Boykin Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(127,'Briard',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(128,'Brittany',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(129,'Brussels Griffon',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(130,'Bull Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(131,'Bulldog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(132,'Bullmastiff',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(133,'Cairn Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(134,'Cane Corso',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(135,'Cardigan Welsh Corgi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(136,'Cavalier King Charles Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(137,'Chesapeake Bay Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(138,'Chihuahua',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(139,'Chinese Crested',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(140,'Chinese Shar-Pei',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(141,'Chow Chow',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(142,'Clumber Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(143,'Cockapoo',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(144,'Collie',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(145,'Coonhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(146,'Corgi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(147,'Coton de Tulear',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(148,'Curly-Coated Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(149,'Dachshund',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(150,'Dalmatian',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(151,'Dandie Dinmont Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(152,'Doberman Pinscher',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(153,'Dogo Argentino',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(154,'Dogue de Bordeaux',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(155,'Dutch Shepherd',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(156,'English Bulldog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(157,'English Cocker Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(158,'English Foxhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(159,'English Setter',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(160,'English Springer Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(161,'English Toy Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(162,'Entlebucher Mountain Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(163,'Eskimo Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(164,'Field Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(165,'Finnish Lapphund',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(166,'Finnish Spitz',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(167,'Flat-Coated Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(168,'French Bulldog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(169,'German Pinscher',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(170,'German Shepherd',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(171,'German Shorthaired Pointer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(172,'German Wirehaired Pointer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(173,'Giant Schnauzer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(174,'Glen of Imaal Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(175,'Goldador',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(176,'Golden Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(177,'Goldendoodle',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(178,'Gordon Setter',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(179,'Great Dane',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(180,'Great Pyrenees',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(181,'Greater Swiss Mountain Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(182,'Greyhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(183,'Harrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(184,'Havanese',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(185,'Irish Setter',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(186,'Irish Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(187,'Irish Water Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(188,'Irish Wolfhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(189,'Italian Greyhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(190,'Jack Russell Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(191,'Japanese Chin',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(192,'Japanese Spitz',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(193,'Keeshond',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(194,'Kerry Blue Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(195,'King Charles Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(196,'Komondor',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(197,'Kuvasz',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(198,'Labrador Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(199,'Lagotto Romagnolo',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(200,'Lakeland Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(201,'Leonberger',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(202,'Lhasa Apso',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(203,'L枚wchen',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(204,'Maltese',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(205,'Manchester Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(206,'Maremma Sheepdog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(207,'Mastiff',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(208,'Miniature Bull Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(209,'Miniature Pinscher',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(210,'Miniature Schnauzer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(211,'Newfoundland',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(212,'Norfolk Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(213,'Norwegian Buhund',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(214,'Norwegian Elkhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(215,'Norwegian Lundehund',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(216,'Norwich Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(217,'Nova Scotia Duck Tolling Retriever',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(218,'Old English Sheepdog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(219,'Otterhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(220,'Papillon',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(221,'Pekingese',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(222,'Pembroke Welsh Corgi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(223,'Petit Basset Griffon Vend茅en',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(224,'Pharaoh Hound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(225,'Plott',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(226,'Pointer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(227,'Polish Lowland Sheepdog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(228,'Pomeranian',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(229,'Poodle',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(230,'Portuguese Water Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(231,'Pug',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(232,'Puli',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(233,'Pumi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(234,'Pyrenean Shepherd',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(235,'Rat Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(236,'Redbone Coonhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(237,'Rhodesian Ridgeback',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(238,'Rottweiler',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(239,'Saint Bernard',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(240,'Saluki',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(241,'Samoyed',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(242,'Schipperke',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(243,'Scottish Deerhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(244,'Scottish Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(245,'Sealyham Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(246,'Shetland Sheepdog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(247,'Shiba Inu',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(248,'Shih Tzu',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(249,'Siberian Husky',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(250,'Silky Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(251,'Skye Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(252,'Sloughi',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(253,'Small Munsterlander Pointer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(254,'Soft-Coated Wheaten Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(255,'Spanish Water Dog',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(256,'Spinone Italiano',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(257,'Staffordshire Bull Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(258,'Standard Schnauzer',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(259,'Sussex Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(260,'Swedish Vallhund',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(261,'Tibetan Mastiff',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(262,'Tibetan Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(263,'Tibetan Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(264,'Toy Fox Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(265,'Treeing Walker Coonhound',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(266,'Vizsla',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(267,'Weimaraner',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(268,'Welsh Springer Spaniel',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(269,'Welsh Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(270,'West Highland White Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(271,'Whippet',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(272,'Wire Fox Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(273,'Wirehaired Pointing Griffon',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(274,'Wirehaired Vizsla',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(275,'Xoloitzcuintli',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(276,'Yorkshire Terrier',2,'2023-05-29 15:32:15','2023-05-29 15:32:15'),(277,'Canarios (Serinus canaria)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(278,'Periquitos australianos (Melopsittacus undulatus)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(279,'Agapornis (género Agapornis, que incluye diferentes especies de inseparables)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(280,'Ninfas (Nymphicus hollandicus)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(281,'Cotorras (como la cotorra argentina o la cotorra de Kramer)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(282,'Pájaros del amor (género Agapornis)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(283,'Diamante mandarín (Taeniopygia guttata)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(284,'Diamante de Gould (Erythrura gouldiae)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(285,'Jilgueros (Carduelis carduelis)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(286,'Pinzones (como el pinzón común o el pinzón zebra)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(287,'Cabezas de ciruela (Psittacula cyanocephala)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(288,'Pericos de Bourke (Neopsephotus bourkii)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(289,'Turacos (como el turaco violeta o el turaco gris)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(290,'Lori arcoíris (Trichoglossus moluccanus)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(291,'Agapornis personatus (Agapornis personatus)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(292,'Caiques (género Pionites)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(293,'Guacamayos (como el guacamayo azul y amarillo o el guacamayo rojo)',3,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(294,'Conejo enano holandés (Oryctolagus cuniculus)',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(295,'Conejo mini rex',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(296,'Conejo cabeza de león (Lionhead)',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(297,'Conejo belier (Lop)',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(298,'Conejo mini lop',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(299,'Conejo inglés (English Spot)',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(300,'Conejo angora',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(301,'Conejo mini toy',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(302,'Conejo gigante español',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(303,'Conejo gigante de Flandes',4,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(304,'Hámster dorado (Mesocricetus auratus)',5,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(305,'Hámster enano ruso (Phodopus sungorus)',5,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(306,'Hámster roborovski (Phodopus roborovskii)',5,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(307,'Hámster chino (Cricetulus griseus)',5,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(308,'Hámster sirio (Mesocricetus auratus)',5,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(309,'Hurón europeo (Mustela putorius furo)',7,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(310,'Hurón de angora',7,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(311,'Hurón panda',7,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(312,'Hurón sable',7,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(313,'Hurón albino',7,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(314,'Guppy (Poecilia reticulata)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(315,'Molly (Poecilia sphenops)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(316,'Platija (Xiphophorus maculatus)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(317,'Tetra neón (Paracheirodon innesi)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(318,'Pez ángel (Pterophyllum scalare)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(319,'Pez disco (Symphysodon spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(320,'Gourami enano (Trichogaster lalius)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(321,'Betta (Betta splendens)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(322,'Corydora (Corydoras spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(323,'Barbo cereza (Puntius titteya)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(324,'Cíclidos africanos enanos (como el cíclido enano de la especie Pelvicachromis pulcher)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(325,'Gourami besador (Helostoma temminckii)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(326,'Pez globo (Tetraodon spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(327,'Pez gato de cristal (Kryptopterus bicirrhis)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(328,'Pez arcoíris (Melanotaenia spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(329,'Danio cebra (Danio rerio)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(330,'Killifish (género Fundulopanchax)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(331,'Rasbora (género Rasbora)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(332,'Pez disco (Symphysodon spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(333,'Pez escalar (Pterophyllum spp.)',8,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(334,'Tortuga de orejas rojas (Trachemys scripta elegans)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(335,'Tortuga de caja (Terrapene spp.)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(336,'Tortuga mediterranea (Testudo spp.)',9,'2023-05-29 15:57:39','2023-05-29 15:59:04'),(337,'Tortuga rusa (Agrionemys horsfieldii)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(338,'Tortuga pintada (Chrysemys picta)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(339,'Tortuga de espolones (Geochelone sulcata)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(340,'Tortuga de agua dulce (Pelodiscus sinensis)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(341,'Tortuga mora (Testudo graeca)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(342,'Tortuga leopardo (Geochelone pardalis)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(343,'Tortuga de cuello largo (Chelodina longicollis)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(344,'Tortuga de orejas amarillas (Trachemys scripta scripta)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(345,'Tortuga de Madagascar (Astrochelys spp.)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(346,'Tortuga de tierra de Hermann (Testudo hermanni)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(347,'Tortuga estrellada (Geochelone elegans)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(348,'Tortuga de orejas rojas sin caparaz贸n (Trachemys scripta troostii)',9,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(349,'Geckos leopardo (Eublepharis macularius)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(350,'Dragones barbudos (Pogona spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(351,'Serpientes de maíz (Pantherophis guttatus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(352,'Tortugas acuáticas (Trachemys spp. y Chrysemys spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(353,'Camaleones (género Chamaeleo)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(354,'Iguanas verdes (Iguana iguana)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(355,'Geckos crestados (Correlophus ciliatus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(356,'Serpientes de leche (Lampropeltis spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(357,'Serpientes reales (Python regius)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(358,'Dragones de agua chinos (Physignathus cocincinus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(359,'Serpientes del maíz del desierto (Gonyosoma spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(360,'Dragones voladores (Draco spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(361,'Tortugas de caja (Terrapene spp.)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(362,'Serpientes de rey de California (Lampropeltis californiae)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(363,'Serpientes boas (género Boa)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(364,'Serpientes de árbol verde (Morelia viridis)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(365,'Serpientes pitón bola (Python regius)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(366,'Camaleones velados (Chamaeleo calyptratus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(367,'Serpientes del maíz albino (Pantherophis guttatus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(368,'Geckos de cola gorda (Hemitheconyx caudicinctus)',10,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(369,'Ratón doméstico (Mus musculus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(370,'Ratón de campo (Apodemus sylvaticus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(371,'Ratón pigmeo africano (Mus minutoides)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(372,'Ratón de patas blancas (Peromyscus leucopus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(373,'Ratón de Mongolia (Mus musculus molossinus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(374,'Rata doméstica (Rattus norvegicus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(375,'Rata de Gambian (Cricetomys gambianus)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(376,'Rata gigante de la Papúa (Mallomys spp.)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(377,'Rata africana de pelo corto (Natalomys spp.)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(378,'Rata arbórea de cola larga (Leopoldamys spp.)',11,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(379,'Gerbo de Mongolia (Meriones unguiculatus)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(380,'Gerbo de Egipto (Gerbillus gerbillus)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(381,'Gerbo de Mongalla (Gerbillus perpallidus)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(382,'Gerbo de Burton (Gerbillus burtoni)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(383,'Gerbo de Shaw (Gerbillus shawi)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(384,'Gerbo de vinagrera (Gerbillus glandarius)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(385,'Gerbo de Allen (Gerbillus andersoni)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(386,'Gerbo de fat-tailed (Pachyuromys duprasi)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(387,'Gerbo de Chevrier (Gerbillus chevrieri)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(388,'Gerbo de Rusia (Meriones meridianus)',12,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(389,'Chinchilla lanígera (Chinchilla lanigera)',13,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(390,'Chinchilla brevicaudata (Chinchilla brevicaudata)',13,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(391,'Periquito común (Melopsittacus undulatus)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(392,'Periquito australiano (Melopsittacus undulatus)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(393,'Periquito inglés (Melopsittacus undulatus)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(394,'Periquito bourke (Neopsephotus bourkii)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(395,'Periquito de Turquía (Alectoris chukar)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(396,'Periquito elegante (Neophema elegans)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(397,'Periquito de collar (Psittacula krameri)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(398,'Periquito de Rüppell (Agapornis pullarius)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(399,'Periquito barrado (Bolborhynchus lineola)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(400,'Periquito de cuello rojo (Platycercus elegans)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(401,'Periquito rey (Alisterus scapularis)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(402,'Periquito de Stanley (Neophema stanleyi)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(403,'Periquito de Mallee (Psephotus varius)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(404,'Periquito de corona roja (Platycercus elegans)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39'),(405,'Periquito carolina (Melopsittacus undulatus)',14,'2023-05-29 15:57:39','2023-05-29 15:57:39');
/*!40000 ALTER TABLE `razas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (5,'Admin','web','2023-05-19 13:23:30','2023-05-19 13:23:30'),(6,'Guest','web','2023-05-19 13:23:30','2023-05-19 13:23:30');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `table_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_caracteristicas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `table_caracteristicas` WRITE;
/*!40000 ALTER TABLE `table_caracteristicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Perros','perros','2023-04-25 15:39:31','2023-05-22 19:14:29'),(2,'Vacunas','vacunas','2023-04-25 20:43:34','2023-05-22 19:14:40'),(3,'Plagas','plagas','2023-05-21 20:08:21','2023-05-22 19:14:48'),(4,'Gatos','gatos','2023-05-22 19:14:57','2023-05-22 19:14:57'),(5,'Adopcion','adopcion','2023-05-22 19:15:04','2023-05-22 19:15:04');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `timex_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timex_categories` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `timex_categories` WRITE;
/*!40000 ALTER TABLE `timex_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `timex_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `timex_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timex_events` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` json DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` date NOT NULL,
  `endTime` time DEFAULT NULL,
  `isAllDay` tinyint(1) NOT NULL DEFAULT '0',
  `organizer` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `participants` json DEFAULT NULL,
  `subject` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `startTime` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `timex_events` WRITE;
/*!40000 ALTER TABLE `timex_events` DISABLE KEYS */;
INSERT INTO `timex_events` VALUES ('990a08ea-783e-44bc-94bb-f951bc880b99','[\"BMW.png\"]','<p>cliente abc</p>','primary','2023-04-28','13:30:00',0,'4','[\"4\", \"5\"]','test','2023-04-28','13:00:00','2023-04-28 10:09:43','2023-04-28 10:17:48'),('9912c96e-b27b-4fe3-a784-0182ce8333ed','[]','<p>asdasDAS</p>','primary','2023-05-02','21:30:00',0,'5','[\"4\", \"5\"]','guest test','2023-05-02','21:00:00','2023-05-02 18:34:39','2023-05-02 18:34:39'),('993c2fda-1c4a-4572-aa44-0ef16789e092','[]','<p>un evento cualquiera</p>','primary','2023-05-23','11:30:00',0,'24','[\"24\"]','Test evento admin','2023-05-23','11:00:00','2023-05-23 08:29:58','2023-05-23 08:29:58'),('994880b5-3092-409c-b88f-101c9d85f0f4','[]','<p>wswewewewweew</p>','primary','2023-05-29','01:59:00',1,'24','[\"24\", \"25\"]','test','2023-05-29','02:00:00','2023-05-29 11:26:00','2023-05-29 11:26:00');
/*!40000 ALTER TABLE `timex_events` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Gatos (Felis catus)','2023-05-23 14:11:54','2023-05-23 14:12:04'),(2,'Perros (Canis lupus familiaris)','2023-05-23 14:12:21','2023-05-23 14:12:21'),(3,'Pájaros (como canarios, periquitos, loros, etc.)','2023-05-23 14:25:33','2023-05-23 14:25:33'),(4,'Conejos (Oryctolagus cuniculus)','2023-05-23 14:26:08','2023-05-23 14:26:08'),(5,'Hamsters (principalmente el hámster dorado)','2023-05-23 14:26:19','2023-05-23 14:26:19'),(6,'Cobayas (Cavia porcellus)','2023-05-23 14:26:29','2023-05-23 14:26:29'),(7,'Hurones (Mustela putorius furo)','2023-05-23 14:26:38','2023-05-23 14:26:38'),(8,'Peces de acuario (como los peces betta, guppies, goldfish, etc.)','2023-05-23 14:26:49','2023-05-23 14:26:49'),(9,'Tortugas (como las tortugas de agua o las tortugas terrestres)','2023-05-23 14:27:00','2023-05-23 14:27:00'),(10,'Reptiles (como los geckos, serpientes no venenosas, iguanas, etc.)','2023-05-23 14:27:12','2023-05-23 14:27:12'),(11,'Ratones y ratas domésticas (Mus musculus)','2023-05-23 14:27:22','2023-05-23 14:27:22'),(12,'Gerbos (Meriones unguiculatus)','2023-05-23 14:27:30','2023-05-23 14:27:30'),(13,'Chinchillas (Chinchilla lanigera)','2023-05-23 14:27:39','2023-05-23 14:27:39'),(14,'Periquitos (Melopsittacus undulatus)','2023-05-23 14:27:47','2023-05-23 14:27:47'),(15,'Serpientes (como las boas, pitones, serpientes del maíz, etc.)','2023-05-23 14:27:58','2023-05-23 14:27:58'),(16,'Conejillos de Indias (Cavia porcellus)','2023-05-23 14:28:06','2023-05-23 14:28:06'),(17,'Erizos africanos (Atelerix albiventris)','2023-05-23 14:28:24','2023-05-23 14:28:24'),(18,'Tarántulas (como la tarántula rosada de Chile)','2023-05-23 14:28:33','2023-05-23 14:28:33');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `patient_id` bigint unsigned NOT NULL,
  `price` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `treatments_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (1,'puesta de vacuna','hasjdid kasd asd as VACUNA\n',5,50,'2023-04-26 07:56:06','2023-04-26 07:56:06'),(2,'hhh','ggg',1,22,'2023-06-01 14:48:56','2023-06-01 14:49:12');
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (24,'Admin','admin@admin.com','2023-05-19 13:23:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NufqzlL1WdY3xmInYf0rpxE4iUzmrcSImzr1N2qGYxEprpXs5s9W03LWU6Bp','2023-05-19 13:23:30','2023-05-19 13:23:30'),(25,'Guest','guest@guest.com','2023-05-19 13:23:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pLEzk8cAOS','2023-05-19 13:23:30','2023-05-19 13:23:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

