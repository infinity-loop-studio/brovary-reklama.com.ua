/*
 Navicat Premium Data Transfer

 Source Server         : GCP (postgresql)
 Source Server Type    : PostgreSQL
 Source Server Version : 90615
 Source Host           : 35.228.30.210:5432
 Source Catalog        : brovary-reklama.com.ua
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90615
 File Encoding         : 65001

 Date: 07/02/2020 23:54:22
*/


-- ----------------------------
-- Sequence structure for archive_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."archive_id_seq";
CREATE SEQUENCE "public"."archive_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for language_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."language_id_seq";
CREATE SEQUENCE "public"."language_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_id_seq";
CREATE SEQUENCE "public"."menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for page_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."page_id_seq";
CREATE SEQUENCE "public"."page_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for service_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."service_id_seq";
CREATE SEQUENCE "public"."service_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for subservice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."subservice_id_seq";
CREATE SEQUENCE "public"."subservice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for archive
-- ----------------------------
DROP TABLE IF EXISTS "public"."archive";
CREATE TABLE "public"."archive" (
  "id" int4 NOT NULL DEFAULT nextval('archive_id_seq'::regclass),
  "createdAt" int8,
  "fromModel" text COLLATE "pg_catalog"."default",
  "originalRecord" json,
  "originalRecordId" json
)
;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS "public"."language";
CREATE TABLE "public"."language" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('language_id_seq'::regclass),
  "code" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO "public"."language" VALUES (1548581641986, 1548581641986, 1, 'ru');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu";
CREATE TABLE "public"."menu" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('menu_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "language" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO "public"."menu" VALUES (1548581641986, 1548581641986, 1, 'наружная-реклама', '<li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/вывески">Вывески</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/объёмные-буквы">Объёмные буквы</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/лайтбокс">Лайтбокс</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/светодиодные-вывески">Светодиодные вывески</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/брендирование-автомобилей">Брендирование автомобилей</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/ситилайт">Ситилайт</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/билборды">Билборды</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/таблички-и-стенды">Таблички и стенды</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/штендер">Штендер</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/стелла">Стелла</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/металлические-конструкции">Металлические конструкции</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/оформление-фасадов-и-витрин">Оформление фасадов</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/оформление-супермаркетов-магазинов-торговых-точек">Оформление супермаркетов</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
                   href="/ru/услуги/наружная-реклама/баннерные-растяжки">Баннерные растяжки</a>
              </li>', 'ru');
INSERT INTO "public"."menu" VALUES (1548581641986, 1548581641986, 2, 'порезка', '<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/порезка/фрезерные-работы">Фрезерные работы</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/порезка/плоттерная">Плоттерная порезка</a>
</li>', 'ru');
INSERT INTO "public"."menu" VALUES (1548581641986, 1548581641986, 3, 'широкоформатная-печать', '<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/на-баннерной-ткани">Печать на баннерной ткани</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/на-перфоплёнке">Печать на перфоплёнке</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/на-виниловой-плёнке">Печать на виниловой плёнке</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/на-постерной-бумаге">Печать на постерной бумаге</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/на-холсте">Печать на холсте</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="/ru/услуги/широкоформатная-печать/ламинация">Ламинация</a>
</li>', 'ru');
INSERT INTO "public"."menu" VALUES (1548581641986, 1548581641986, 4, 'реклама-в-броварах', '<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="http://localhost:1337/ru/услуги/реклама-в-броварах/маршрутки">Реклама в маршрутках</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="http://localhost:1337/ru/услуги/реклама-в-броварах/на-мосту">Реклама на мосту</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="http://localhost:1337/ru/услуги/реклама-в-броварах/на-остановках">Реклама на остановках</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="http://localhost:1337/ru/услуги/реклама-в-броварах/размещение-на-билбордах">Реклама на билбордах</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link"
     href="http://localhost:1337/ru/услуги/реклама-в-броварах/размещение-на-рекламной-стене">Реклама на стене</a>
</li>', 'ru');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS "public"."page";
CREATE TABLE "public"."page" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('page_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "language" text COLLATE "pg_catalog"."default",
  "title" text COLLATE "pg_catalog"."default",
  "seoDescription" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 1, 'homepage', 'Homepage', '<div class="animated fadeIn">
  <!--SLIDESHOW-->
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="carousel slide pointer-event" id="carouselExampleCaptions" data-ride="carousel">
		  
            <!--<ol class="carousel-indicators">
              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            </ol>-->
			
            <div class="carousel-inner">
			
              <div class="carousel-item active">
                <img class="d-block w-100" data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide" alt="Бровары Реклама - изготовление светящегося лайтбокса в форме рождественского вертепа" src="/images/homepage/slideshow/slideshow-1.jpg" data-holder-rendered="true">
                <div class="carousel-caption d-none d-md-block">
                  <h3 class="text-warning">Бровары Реклама</h3>
                  <p>Брэндовая вывеска нашей компании на остановке "Школа интернат"</p>
                </div>
              </div>
            </div>
			
            <!--<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
			
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>-->
			
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--END SLIDESHOW-->
  <!--INTRO-->
  <div class="row">
    
<div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 text-center">
            <h1 class="display-4">О нас</h1>
            
          </div>
<p class="lead mb-0">"Бровары Реклама" предлагает широкий ассортимент рекламной продукции в Броварах
              любого типа и сложности. Предлагаем следующие типы услуг в сегменте наружная реклама.</p>
        </div>
      </div>
    </div>
  </div>
  <!--SERVICES-->
  <div class="row" id="homepage">
    <!--1-->
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>Проектно-техническая документация</div>
        <div class="">
	<img src="/images/architekturnie-uslugi-1.jpg" width="100%" alt="Бровары Реклама - Изготовление проектно-технической документации в Броварах для наружных рекламных изделий">
</div>
<div class="card-body"><p>Нужна тем кто хочет установить рекламный объект непостредственно в Броварах. К
            примеру, для установки стеллы в Броварах или светящейся вывески на фасаде здания, нужно получить разрешение
            от Броварского исполнительного комитета.</p></div>
        <div class="card-footer">
          <button class="btn btn-link" type="button"><a href="/ru/услуги/архитектурные">Читать далее</a></button>
        </div>
      </div>
    </div>
    <!--2-->
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>Наружная реклама
        </div>
        <div>
	<img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-viveski-3.jpg" width="100%">
</div>
<div class="card-body"><p>В компании "Бровары Реклама" самой популярной рубрикой является наружная реклама.
            Гордостью "Бровары Реклама" является то что у нас самый широкий ассортимент рекламной продукции по сравнению
            со всеми конкурентами в Броварах.</p>
        </div>
        <div class="card-footer">
          <button class="btn btn-link" type="button"><a href="/ru/услуги/наружная-реклама">Читать далее</a></button>
        </div>
      </div>
    </div>
    <!--3-->
    
    <!--4-->
    
    <!--5-->
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>Широкоформатная печать
        </div>
        <div>
    <img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-posternoi-bumage-1.jpg" width="100%">
</div>
<div class="card-body"><p>Весьма популярным разделом в "Бровары Реклама" является широкоформатная печать.
            "Бровары Реклама" осуществляет печать на следующих типах носителя: баннерная ткань, перфоплёнка, винил,
            постерная бумага, холст. В "Бровары Реклама" наиболее часто используется баннерная ткань и перфоплёнка для
            наружной рекламы.</p>
          <br>
        </div>
        <div class="card-footer">
          <button class="btn btn-link" type="button"><a href="/ru/услуги/широкоформатная-печать">Читать далее</a>
          </button>
        </div>
      </div>
    </div>
    <!--6-->
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>Реклама в Броварах
        </div>
        <div>
    <img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-razmeshenie-na-reklamnoi-stene-1.jpg" width="100%">
</div>
<div class="card-body"><p>Визитная карточка "Бровары Реклама" это широкий ассортимент рекламных плоскостей.
            Только в "Бровары Реклама" самый широкий выбор биллбордов для размещения вашей рекламы, маршруток для
            размещения внутренней и наружной рекламы, броварских остановок для рекламы, и собственных рекламых площадей
            на мосту и стене.</p>
        </div>
        <div class="card-footer">
          <button class="btn btn-link" type="button"><a href="/ru/услуги/реклама-в-броварах">Читать далее</a></button>
        </div>
      </div>
    </div>


  </div><div class="row">
    
<div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 text-center bg-color-1">
            <h1 class="display-4 text-white">Акции</h1>
            
          </div>
<p class="lead mb-0 text-center">Бровары Реклама всегда готова предложить самые выгодные условия и ценовую политику для наших клиентов, на такие категории как проектно-техническая документация, наружная реклама, порезка широкоформатной рекламной продукции на плоттере, фрезерные работы, реклама в Броварах.</p>
        </div>
      </div>
    </div>
  </div><div class="row" id="homepage">
    <!--1-->
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>БРО скидка</div>
        
<div class="card-body"><p>Каждый клиент который скажет код купона "Дайте мне БРО скидку" получит скидку 5% на производство рекламной продукции.</p><br></div>
        
      </div>
    </div>
    <!--2-->
    <div class="col-sm-6 col-md-6">
      <div class="card card-accent-danger">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>-50% на проектно-техническую документацию</div>
        
<div class="card-body"><p>Компания Бровары Реклама проводит акцию, каждый клиент который закажет рекламную вывеску в нашей компании, получит скидку 50% на изготовление проектно-технической документации.</p>
        </div>
        
      </div>
    </div>
    <!--3-->
    
    <!--4-->
    
    <!--5-->
    
    
    


  </div><div class="row">
    
<div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 text-center bg-color-2">
            <h1 class="display-4 text-white">Новости</h1>
            
          </div>
<p class="lead mb-0 text-center">Бровары Реклама регулярно публикует самую свежую и актуальную информацию о рекламе в Броварах и о рекламе в целом.</p>
        </div>
      </div>
    </div>
  </div><div class="row" id="homepage">
    <!--1-->
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-header font-lg">
          <i class="fa fa-check"></i>Реклама в броварских маршрутках</div>
        
<div class="card-body"><p> </p><br></div>
        
      </div>
    </div>
    <!--2-->
    
    <!--3-->
    
    <!--4-->
    
    <!--5-->
    
    
    


  </div>
</div>', 'ru', 'Бровары Реклама - реклама в транспорте, на транспорте, остановке, наржуная реклама, широкоформатная печать, реклама в Броварах.', 'Наружная реклама, проектно-техническая документация, широкоформатная печать, порезка рекламной продукции, рекламные проспекты в Броварах, реклама в маршрутках, на остановках, изготовление вывесок, рекламных щитов, билбордов, штендеров и прочей рекламной продукции.');
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 2, 'услуги', 'Услуги', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4">Наши услуги</h1>
            <p class="lead mb-0">
              "Бровары Реклама" предоставляет широкий ассортимент рекламной продукции в Броварах любого типа и
              сложности. Наша компания предоставляет следующие типы услуг по предоставлению рекламы в Броварах.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Архитектурные услуги
        </div>
        <div class="card-body"><p>Разработка проектно-технической документации на рекламу, паспорта фасадов,
            конструктивное решение любой сложности.</p>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/архитектурные">Читать далее</a></button>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Наружная реклама
        </div>
        <div class="card-body"><p>Производство рекламных конструкций любой сложности: стеллы, бигборды, вывески, стенды,
            штендеры, лайтбоксы.</p>
<br>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/наружная-реклама">Читать далее</a></button>
        </div>
      </div>
    </div>

    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Порезка
        </div>
        <div class="card-body"><p>Осуществляем порезочные работы на специальном плоттере а так же на фрезерном
            станке.</p>
<br>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/порезка">Читать далее</a></button>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Широкоформатная печать
        </div>
        <div class="card-body"><p>Печать на банернной ткани, самоклеющейся пленки, ламинация, плоттерная поразка,
            оклейка витрин и берендирование авто.</p>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/широкоформатная-печать">Читать далее</a></button>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Реклама в Броварах
        </div>
        <div class="card-body"><p>Размещение рекламы в Броварском регионе и в Броварах на бордах, остановсках ,
            маршрутках, рекламных площадях.</p>
<br>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/реклама-в-броварах">Читать далее</a></button>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6">
      <div class="card">
        <div class="card-header">
          <i class="fa fa-check"></i>Материалы для рекламы
        </div>
        <div class="card-body"><p>Материалы для наружной рекламы и широкоформатной печати. Рекламные материалы в наличии
            и под заказ: ПВХ, композитные панели, акрил, пленки цветные и белые.
          </p>
          <button class="btn btn-link" type="button"><a href="/ru/услуги/материалы-для-рекламы">Читать далее</a></button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal title</h4>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <p>One fine body…</p>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
          <button class="btn btn-primary" type="button">Save changes</button>
        </div>
      </div>
      <!-- /.modal-content-->
    </div>
    <!-- /.modal-dialog-->
  </div>
</div>', 'ru', 'Бровары Реклама - Услуги', ' ');
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 3, 'заказать-рекламу', 'Зказать рекламу', 'Заказать рекламу', 'ru', 'No title', ' ');
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 4, 'галерея', 'Галерея', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Галерея</h1>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="gallery" class="row justify-content-center">
    <div class="col-md-12">
      <div class="card">
        <div class="row pl-4 pr-4 pt-2 pb-2">
          <a href="/gallery/gallery-image-56.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-56.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-55.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-55.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-54.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-54.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-53.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-53.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-52.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-52.jpg" class="img-fluid">
          </a>
          <a style="display: none" href="/gallery/gallery-image-51.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-51.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-50.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-50.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-49.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-49.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-48.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-48.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-47.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-47.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-46.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-46.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-45.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-45.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-44.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-44.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-43.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-43.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-42.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-42.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-41.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-41.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-40.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-40.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-39.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-39.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-38.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-38.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-37.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-37.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-36.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-36.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-35.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-35.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-34.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-34.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-33.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-33.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-32.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-32.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-31.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-31.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-30.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-30.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-29.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-29.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-28.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-28.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-27.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-27.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-26.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-26.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-25.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-25.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-24.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-24.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-23.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-23.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-22.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-22.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-21.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-21.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-20.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-20.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-19.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-19.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-18.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-18.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-17.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-17.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-16.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-16.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-15.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-15.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-14.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-14.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-13.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-13.jpg" class="img-fluid">
          </a>
          <a style="display: none" href="/gallery/gallery-image-12.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-12.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-11.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-11.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-10.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-10.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-9.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-9.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-8.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-8.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-7.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-7.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-6.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-6.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-5.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-5.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-4.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-4.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-3.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-3.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-2.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-2.jpg" class="img-fluid">
          </a>
          <a href="/gallery/gallery-image-1.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
            <img src="/gallery/gallery-image-1.jpg" class="img-fluid">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
', 'ru', 'Бровары Реклама - Галерея', ' ');
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 5, 'контакты', 'Контакты', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Контакты</h1>
            
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        
        <div class="card-body"><div id="map"></div>
          
        </div>
      </div>
    </div>


    

    
    
    
    
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal title</h4>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <p>One fine body…</p>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
          <button class="btn btn-primary" type="button">Save changes</button>
        </div>
      </div>
      <!-- /.modal-content-->
    </div>
    <!-- /.modal-dialog-->
  </div>
</div>', 'ru', 'Бровары Реклама - Контакты', ' ');
INSERT INTO "public"."page" VALUES (1548581641986, 1548581641986, 6, 'наши-награды', 'Наши награды', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Наши награды</h1>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="gallery" class="row justify-content-center">
    <div class="col-md-12">
      <div class="card">
        <div class="row pl-4 pr-4 pt-2 pb-2">
          <a href="/bounties/bounty-1.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
            <img src="/bounties/bounty-1.jpg" class="img-fluid">
          </a>
          <a href="/bounties/bounty-2.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
            <img src="/bounties/bounty-2.jpg" class="img-fluid">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
', 'ru', 'Бровары Реклама - Галерея', ' ');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS "public"."service";
CREATE TABLE "public"."service" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('service_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "language" text COLLATE "pg_catalog"."default",
  "title" text COLLATE "pg_catalog"."default",
  "seoDescription" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 1, 'архитектурные', 'Архитектурные', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Архитектурные услуги</h1>
            
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        
        <div class="card-body"><p>Своим клиентам мы можем предложить полный цикл изготовления и размещения рекламоносителей. Первый этап, это разработка проектно-технической документации. Это является обязательной составляющей проекта для получения разрешения на размещение рекламной конструкции. В неё входят сведения о фасаде здания (месте размещения рекламного объекта), подкреплённые фотографиями и компьютерным монтажом размещённого на нём пока ещё виртуального рекламоносителя; подробное описание самой рекламной конструкции (тип, размеры, вид подсветки, способ крепления, спецификация материалов), расчет всех видов нагрузки, эскизы объёмно-пространственного, художественно-графического и цветового решений рекламного объекта, его конструктивного решения, включая схему крепления к фасаду, а также эскиз фрагмента фасада здания с местом размещения. А для самостоятельно стоящих рекламных носителей: бордов, штендеров, стелл и т.д. - с учетом привязки к местности.</p>
          
        </div>
      </div>
    </div>

<div class="col-sm-12 col-md-12">
      <div class="card">
        
        <div class="card-body">
    <p>
<strong>
Документы для подготовки проектно технической документации:
</strong>
</p>
<div class="row">
    <div class="col-md-6 pr-0">
<ul class="pl-4">
<li>
Заказчик технической документации (юридическое или физическое лицо)
</li>
<li>
Учредительные документы (для юридических лиц)
</li>
<li>
Копии: паспорт, код (для физических лиц)
</li>
<li>
Документы на помещение (На собственность или договор аренды)
</li>
<li>
Точный адрес с номером помещения
</li>
<li>
Габаритные замеры вывески (ширина высота длина)
</li>
<li>
Несколько фото фасада без вывески
</li>
<li>
Фото фасада с визуализацией будущей вывески
</li></ul>
    </div><div class="col-md-6">
    <img src="/images/architekturnie-uslugi-1.jpg" width="100%">
</div>
</div>
          
        </div>
      </div>
    </div>
    

    
    
    
    
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal title</h4>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <p>One fine body…</p>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
          <button class="btn btn-primary" type="button">Save changes</button>
        </div>
      </div>
      <!-- /.modal-content-->
    </div>
    <!-- /.modal-dialog-->
  </div>
</div>', 'ru', 'Бровары Реклама - Проектно-техническая документация', ' ');
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 2, 'наружная-реклама', 'Наружная реклама', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Наружная реклама</h1>            
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Вывески</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-viveski-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/вывески">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Объёмные буквы</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-ob%60emnie-bukvi-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/объёмные-буквы">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Лайтбокс</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-laitboks-4.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/лайтбокс">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Светодиодные вывески</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-svetodiodnie-viveski-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/светодиодные-вывески">Читать далее</a></button></div>
      </div>
    </div>






<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Брендирование автомобилей</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-brendirovanie-avtomobiley-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/брендирование-автомобилей">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Ситилайт</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-sitilait-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/ситилайт">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Билборды</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-metallicheskie-konstrukzii-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/билборды">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Таблички и стенды</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-tablichki-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/таблички-и-стенды">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Штендер</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-shtender-4.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/штендер">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Стелла</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-stella-4.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/стелла">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Металлические конструкции</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-metallicheskie-konstrukzii-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/металлические-конструкции">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Оформление фасадов</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-oformlenie-fasadov-i-vitrin-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/оформление-фасадов-и-витрин">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Оформление супермаркетов</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-oformlenie-supermarketov-magazinov-torgovich-tochek-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/оформление-супермаркетов-магазинов-торговых-точек">Читать далее</a></button></div>
      </div>
    </div><div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Баннерные растяжки</div><div class="card-body"><img src="/images/uslugi/naruznaia-reklama/naruznaia-reklama-bannernie-rastiazki-4.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/наружная-реклама/баннерные-растяжки">Читать далее</a></button></div>
      </div>
    </div>

























    

    
    
    
    
  </div>
  
</div>', 'ru', 'Бровары Реклама - Наружная реклама', ' ');
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 3, 'порезка', 'Порезка', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Порезка</h1>            
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Фрезерные работы</div><div class="card-body"><img src="/images/uslugi/porezka/porezka-frezernie-raboti-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/порезка/фрезерные-работы">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Плоттерная порезка</div><div class="card-body"><img src="/images/uslugi/porezka/porezka-plotternaia-porezka-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/порезка/плоттерная">Читать далее</a></button></div>
      </div>
    </div>




































    

    
    
    
    
  </div>
  
</div>', 'ru', 'Бровары Реклама - Порезка рекламной продукции', ' ');
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 4, 'широкоформатная-печать', 'Широкоформатная печать', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Широкоформатная печать</h1>            
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Печать на баннерной ткани</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-banernoi-tkani-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/на-баннерной-ткани">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Печать на перфопленке</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-perfoplenke-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/на-перфоплёнке">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Печать на виниловой пленке</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-vinilovoi-plenke-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/на-виниловой-плёнке">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Печать на постерной бумаге</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-posternoi-bumage-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/на-постерной-бумаге">Читать далее</a></button></div>
      </div>
    </div>

<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Печать на холсте</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-pechat-na-cholste-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/на-холсте">Читать далее</a></button></div>
      </div>
    </div><div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Ламинация</div><div class="card-body"><img src="/images/uslugi/shirokoformatnaya-pechat/shirokoformatnaia-pechat-laminacia-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/широкоформатная-печать/ламинация">Читать далее</a></button></div>
      </div>
    </div>
  </div>
  
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать', ' ');
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 5, 'реклама-в-броварах', 'Реклама в броварах', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама в Броварах</h1>            
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="row">
    <div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Размещение в маршрутках</div><div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-razmeshenie-v-marshrutkah-4.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/реклама-в-броварах/маршрутки">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Рекламная площадь на мосту</div><div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-reklamnaia-ploshad-na-mostu-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/реклама-в-броварах/на-мосту">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Размещение на остановках</div><div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-razmeshenie-na-ostanovkach-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/реклама-в-броварах/на-остановках">Читать далее</a></button></div>
      </div>
    </div>
<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Размещение на билбордах</div><div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-razmeshenie-na-billbordah-3.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/реклама-в-броварах/размещение-на-билбордах">Читать далее</a></button></div>
      </div>
    </div>

<div class="col-sm-6 col-md-6">
      <div class="card">
        
        <div class="card-header">Размещение на рекламной стене</div><div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/reklama-v-brovarah-razmeshenie-na-reklamnoi-stene-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
<div class="card-footer"><button class="btn btn-link p-0" type="button"><a href="/ru/услуги/реклама-в-броварах/размещение-на-рекламной-стене">Читать далее</a></button></div>
      </div>
    </div>




































    

    
    
    
    
  </div>
  
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах', ' ');
INSERT INTO "public"."service" VALUES (1548581641986, 1548581641986, 6, 'материалы-для-рекламы', 'Материалы для рекламы', 'Описание', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Материалы для рекламы</h1>
            
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        
        <div class="card-body"><p></p>
          
        </div>
      </div>
    </div>


    

    
    
    
    
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal title</h4>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <p>One fine body…</p>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
          <button class="btn btn-primary" type="button">Save changes</button>
        </div>
      </div>
      <!-- /.modal-content-->
    </div>
    <!-- /.modal-dialog-->
  </div>
</div>', 'ru', 'Бровары Реклама - Материалы для рекламы', ' ');

-- ----------------------------
-- Table structure for subservice
-- ----------------------------
DROP TABLE IF EXISTS "public"."subservice";
CREATE TABLE "public"."subservice" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL DEFAULT nextval('subservice_id_seq'::regclass),
  "systemName" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "language" text COLLATE "pg_catalog"."default",
  "title" text COLLATE "pg_catalog"."default",
  "seoDescription" text COLLATE "pg_catalog"."default",
  "service" int4
)
;

-- ----------------------------
-- Records of subservice
-- ----------------------------
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 1, 'вывески', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Вывески</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Самый важный элемент входной группы, это вывеска, без которого просто невозможно представить наружное рекламное оформление. Вывеска может просто располагаться над входом, а может занимать весь фасад здания. Для потенциального клиента это – лицо компании, ведь именно на этот элемент оформления и обращает внимание посетитель перед тем, как зайти на предприятие, в кафе, офис либо магазин. Если фасад безвкусно оформлен или запущен, это сыграет с вашим бизнесом злую шутку – людям будет сложно поверить, что с Вами можно иметь дело и за безликими стенами продают качественный товар или оказывают профессиональные услуги.

</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/viveski/naruznaia-reklama-viveski-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/viveski/naruznaia-reklama-viveski-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка вывески', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 2, 'объёмные-буквы', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Объёмные буквы</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
            Данный вид наружной рекламы, это достойная альтернатива старым массивным вывескам и обладают рядом не только функциональных, но и стилистических преимуществ. У нас вы можете заказать буквы любых форм, размеров и дизайна, все ваши пожелания по их оформлению гарантированно будут учтены.
          </p>
          <p>
            <strong>Объемные световые буквы с внутренней подсветкой</strong>
          </p>
          <p>
            Самый популярный тип современной вывески. В таком случае элементы производятся из цветного либо молочного акрила, покрытого пленкой. Источниками света служат энерго-экономные светодиоды, которые обеспечивают равномерный световой поток. Подсветка может быть и статичной, и динамичной. Для последней используется особый контроллер, регулирующий поступление напряжения, то есть мерцание, цветовой переход.
          </p>
          <p>
            <strong>Не световые объемные буквы</strong>
          </p>
          <p>
            Как правило, применяются в качестве интерьерной рекламы и размещаются в хорошо освещенных местах. Они производятся из тех же материалов и с применением тех же технологий, что и световые буквы, но не имеют подсветки.
          </p>
          <p>
            <strong>Объемные световые буквы с контражуром</strong>
          </p>
          <p>
            Имеют светящийся ореол, такое свечение достигается за счет того, что источник света крепится за буквой. Буквы с контражуром устанавливаются не вплотную к стене фасада, а на специальных дистанционных держателях. В зависимости от длины держателей свет рассеивается в виде ореола в большей или меньшей степени. Сама буква не светится и производится из светонепроницаемых материалов. Цвет свечения может быть любым.
          </p>
          <p>
            <strong>Объёмная буква(металлическая)</strong>
          </p>
          <p>
            Самым распространенным и востребованным материалом для металлических букв является нержавеющая сталь. Стоимость таких букв выше пластиковых, но и срок службы такой вывески намного дольше, она не теряет своей привлекательности даже спустя годы. Объемные буквы из нержавеющей стали обычно бывают серебристыми и золотыми. Подсветка металлических букв может быть как наружной (прожектора), так и внутренней в виде контражура.
          </p>
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/ob`emnie-bukvi/naruznaia-reklama-ob`emnie-bukvi-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/ob`emnie-bukvi/naruznaia-reklama-ob`emnie-bukvi-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка объёмных букв', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 3, 'лайтбокс', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Лайтбокс</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Лайтбокс (яркий световой короб) являются одним из наиболее распространенных способов наружной рекламы, который точно увидят. Он легко справляется с задачами самостоятельного рекламоносителя (вывески, указателя, стеллы), а может быть и составной частью более масштабной рекламной установки.
</p>

<p>
<strong>
Световые короба по своей конструкции могут быть:
</strong>
</p>

<ul>
<li>
простые;
</li>
<li>
фигурные;
</li>
<li>
панель-кронштейны (монтируются перпендикулярно зданию).
</li>
</ul>
<p>
<strong>
Лайтбоксы так же делятся на:
</strong>
</p>
<ul>
<li>
односторонний (имеет одну сторону и крепиться другой стороной к фасаду);
</li>
<li>
двусторонние (имеют две лицевые стороны, монтируются кронштейнами перпендикулярно фасаду строений либо к тротуару).
</li>
</ul>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/laitboks/naruznaia-reklama-laitboks-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка лайтбокса', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 4, 'светодиодные-вывески', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Светодиодные вывески</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Предлагаем изготовление на собственном производстве световые вывески: внутренние, фасадные и накрышные. Они изготавливаются в виде световых коробов и объемных световых букв. Световые короба, это конструкция, имеющая плоскую поверхность - но ее можно сделать разной формы, внутри находятся светодиодные модули, к ним в комплекте идет пульт и при помощи его можно регулировать цвет и режим мигания. Могут быть как двусторонние, так и односторонние. Они доступны по цене и по желанию их можно использовать, под другой сюжет. Разработать сюжет вывески всегда можно в нашей студии дизайна. Так же предлагаем услугу по качественному монтажу.

</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/svetodiodnie-viveski/naruznaia-reklama-svetodiodnie-viveski-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка светодиодной вывески', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 5, 'брендирование-автомобилей', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Брендирование автомобилей</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Брендирование автомобиля, мотоцикла, лодки, самолета и т.д. дает нам возможность рекламировать свой товар, или продвигать ту или иную услугу, не заплатив за аренду рекламного носителя ни копейки. Мобильная реклама может значительно увеличить количество заказов и поток клиентов, а красивый, информативный дизайн надолго остаться в памяти клиентов. А с практической стороны – помогает защитить кузов от агрессивной окружающей среды.
</p>
<p>
Самый распространенный способ брендирования на сегодняшний день это комбинированная оклейка автомобиля. Здесь сочетается широкоформатная печать и плоттерная порезка. К примеру печатается изображение, а так же на плоттере вырезаем информационный блок, для капота и окон. Стоит отметить, что напечатанные стикеры можно заламинировать прозрачной матовой или глянцевой пленкой, для защиты изображения.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/brendirovanie-avtomobiley/naruznaia-reklama-brendirovanie-avtomobiley-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/brendirovanie-avtomobiley/naruznaia-reklama-brendirovanie-avtomobiley-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Брендирование автомобиля', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 6, 'ситилайт', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Ситилайт</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p></p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/sitilait/naruznaia-reklama-sitilait-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка ситилайта', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 7, 'билборды', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Биллборды</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Одно из направлений деятельности «Бровары Реклама» – это изготовление, монтаж и техническая документация на билборд. Билборды - конструкции, на которых размещена информация о услугах, товарах и другое, например: берегите лес, поздравляю, голосуйте за… и т.д. Располагается в непосредственной близости от автомагистралей и улиц. Это пофильная труба (нога) на которой расположены рекламные щиты. Размер рекламного поля, обычно 6×3 метра, по конструкции бывают: разборные, т. е. «трансформеры» и неразборные. Также у щита обычно две стороны:
</p>
<ul>
<li>
А — обращена к нам лицом (в том случае, если рекламный щит справа) размещение на стороне «А» обходится рекламодателю дороже.
</li>
<li>
Б — обращена к нам лицом (в том случае, если щит слева или посередине дороги.
</li></ul>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/billbordy/naruznaia-reklama-billbordy-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/billbordy/naruznaia-reklama-billbordy-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка биллборда', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 8, 'таблички-и-стенды', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Таблички и стенды</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Цель таблички – «проводить» посетителя в помещение и помогает ориентироваться в пространстве. Их отсутствие расценивается как просто признак дурного тона и пренебрежительное отношение к клиенту. Основные виды:
</p>
<ul>
<li>
Фасадные: для использования на фасаде зданий в качестве информаторов.
</li>
<li>
Информационные таблички: используются в качестве системы навигации на зданиях и служебных помещениях. Как правило, они помогают людям ориентироваться на местности и многоэтажном помещении. • Дверные: предназначены для обозначения отделов, фамилий и должностей на дверях офисных помещений. 
</li>
<li>
Указатели: указывают путь: как пройти, вход-выход и т.д.
</li>
</ul>
<p>
Оказываем услугу по изготовлению информационных стендов: уголки покупателя, пожарной безопасности, охрана труда, школьные, для детских садов, схема маршрутов, доска почета, по электробезопасности, строительству, первой помощи, экологии, с государственной символикой, стенды для медучереждений, банков и т.д. Стенды могут быть сделаны разного вида: настенные, напольные, уличные. Можно дополнить объемными карманами, перекидной системой (книжка). На своем оборудовании печатаем плакаты для стендов и у нас можно заказать полиграфическую продукцию (визитки, флаера, листовки и т.д.)
</p>
<p>
Также наши специалисты могут сделать стенд любой формы, размера, с объемными, светящимися буквами и элементами.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/tablichki/naruznaia-reklama-tablichki-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/tablichki/naruznaia-reklama-tablichki-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка табличек и стендов', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 9, 'штендер', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Штендер</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Штендер - небольшой рекламный щит, бывает одно или двусторонний, выполненный в виде раскладного «домика». Они устанавливаются для привлечения внимания потенциальных клиентов на пешеходной зоне возле здания вблизи кафе, магазина, отдела продаж, офиса. Кроме того, штендер может нести дополнительную информацию о разнообразии товаров и услуг, сезонных предложений. Современные материалы позволяют оперативно менять содержание: курс валют (сменные таблички), меню кафе (писать мелом по его поверхности). Штендеры бывают: уличные, интерьерные, выносные, а также складные щиты.
</p>
<p>
Так же изготавливаем сложные штендеры – ростовые фигуры. Оригинальный дизайн ростовой фигуры и яркое, красочное изображение с хорошим сюжетом. Ростовая фигура часто используются для фотосессий это отвлекает от повседневности и качественно усиливает эффект воздействия на потребителя.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/shtender/naruznaia-reklama-shtender-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/вывески">Вывески</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/объёмные-буквы">Объёмные буквы</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/лайтбокс">Лайтбокс</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/светодиодные-вывески">Светодиодные вывески</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/брендирование-автомобилей">Брендирование автомобилей</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/ситилайт">Ситилайт</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/билборды">Билборды</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/таблички-и-стенды">Таблички и стенды</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link active" href="/ru/услуги/наружная-реклама/штендер">Штендер</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/стелла">Стелла</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/металлические-конструкции">Металлические конструкции</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/оформление-фасадов-и-витрин">Оформление фасадов</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/оформление-супермаркетов-магазинов-торговых-точек">Оформление супермаркетов</a>
              </li>
              <li class="nav-item col-md-12 p-0">
                <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/наружная-реклама/баннерные-растяжки">Баннерные растяжки</a>
              </li></ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка штендера', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 10, 'стелла', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Стелла</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Стелла самостоятельно стоящая рекламная конструкция устанавливается вблизи зданий, мест скопления людей, перекрёстков транспортных потоков. Представляет собой конструкцию, чаще из металла, на бетонном основании с полями для рекламной информации. Стелы производятся разных размеров, сложности и цветовой гаммы. Стелы могут иметь внутреннюю подсветку и наружную, объёмные световые и не световые буквы и знаки, бегущую строку.
</p>
<p>
Металлическая конструкция облицовывается композитным материалом, ПВХ или акрилом в зависимости от дизайнерской задумки, величины или сложности изделия. Нужно учитывать, что стелла требует оформления проектно технической документации и согласования в соответствующих органах. Изготовление и монтаж стелы — долгая и трудоемкая работа, занимающая от нескольких недель до нескольких месяцев.
</p>

          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/stella/naruznaia-reklama-stella-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка стеллы', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 11, 'металлические-конструкции', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Металлические конструкции</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Вывески, баннерные растяжки, композитные панели, стеллы, информационные стенды, таблички и т.д. крепятся на каркасы из металла. Собственное оборудование и квалифицированные специалисты позволяют нам максимально качественно изготовить конструкцию, любой сложности, что бы она прослужила верой правдой.

</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/metallicheskie-konstrukzii/naruznaia-reklama-metallicheskie-konstrukzii-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/metallicheskie-konstrukzii/naruznaia-reklama-metallicheskie-konstrukzii-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разработка металлических конструкций', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 12, 'оформление-фасадов-и-витрин', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Оформление фасадов</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Человек, проходя мимо, первоначально оценивает оформление и это не удивительно, ведь основную часть информации мы получаем через зрение. Наша студия дизайна поможет разработать лучшую концепцию для автосалонов, банков, ресторанов и кафе, аптек, магазинов и супермаркетов, торговых и развлекательных центров, страховых компаний, ателье, салонов красоты, гостиниц офисов, турагентств, медучреждений, нотариусов, ночных клубов, ломбардов, заправок, зоомагазинов, ювелирных магазинов и т.д. А наше, собственное производство поможет воплотить. Результат порадует даже самого требовательного клиента!

</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/oformlenie-fasadov-i-vitrin/naruznaia-reklama-oformlenie-fasadov-i-vitrin-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/oformlenie-fasadov-i-vitrin/naruznaia-reklama-oformlenie-fasadov-i-vitrin-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Оформление фасада и витрины', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 13, 'оформление-супермаркетов-магазинов-торговых-точек', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Оформление супермаркетов</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Маркетологи считают, что грамотно использование рекламные площади магазина могут повысить эффективность продаж наполовину. Наряду с наружной рекламой, наша творческая команда готова предложить клиенту варианты внутреннего оформления помещений. Используем максимум возможностей нашего производства (дизайн, изготовление, монтаж). Для внутреннего оформления предлагаем много акцентирующих рекламных элементов:
</p>
<ul>
<li>баннеры</li>

<li>наклейки на витрины (пленка белая и прозрачная, перфопленка)</li>

<li>штендеры</li>

<li>таблички (открыто-закрыто, график работы)</li>

<li>внутренние лайтбоксы</li>

<li>указатели</li>

<li>информативные стенды</li>

<li>уголки покупателя</li>

<li>плакаты (постеры)</li>
</ul>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/oformlenie-supermarketov-magazinov-torgovich-tochek/naruznaia-reklama-oformlenie-supermarketov-magazinov-torgovich-tochek-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Оформление супермаркетов, магазинов, торговых точек', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 14, 'баннерные-растяжки', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Баннерные растяжки</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Изготовление баннерных растяжек является одним из распространенных способов рекламы, не только на улице, но и внутри помещений. Кроме того, является еще и экономичным видом рекламы. Мы изготовим баннерные растяжки различных размеров. В случае отсутствия дизайна, наша студия, компании «Бровары Реклама», готова создать дизайн согласно вашим запросам. Завершающим этапом в изготовлении является установка люверсов, по периметру полотна, что позволит сделать при монтаже идеальное натяжение без морщин и избежать разрыва материала в месте крепления. Так же, изготавливаем металлические каркасы.

</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/naruznaia-reklama/bannernie-rastiazki/naruznaia-reklama-bannernie-rastiazki-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Разарботка баннерной растяжки', ' ', 2);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 16, 'фрезерные-работы', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Фрезерные работы</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Фрезерная резка (фрезеровка) применяются для производства рекламных конструкций: объемных букв, световые и не световые короба нестандартных форм, сложных вывесок, вырезных указателей, фигурных табличек из пластика, композита, акрила и других материалов. Это не полный перечень того, что можно изготовить, все определяет Ваша фантазия и желание. Выполняются на специализированном оборудовании с помощью режущего инструмента — фрезы. Станок обладает высокой точностью. Рабочее поле 2000мм на 3000мм, максимальная толщина обрабатываемого материала — 50 мм.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/porezka/frezernie-raboti/porezka-frezernie-raboti-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div><div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/porezka/porezka-frezernie-raboti-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Фрезеровка рекламной продукции', ' ', 3);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 17, 'плоттерная', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Плоттерная порезка</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Если вам необходимо вырезать продукцию фигурной формы, плоттерная резка – самая оптимальная технология. Наше производство позволяет резать материалы насквозь или прорезать только верхний слой, что необходимо при работе с самоклеящимися бумагами и пленками. Диапазон использования данной услуги весьма широк: оформление товаров, витрин, киосков, автомобилей, информационных стендов, вывесок, табличек, изготовление трафаретов и многое другое. Плоттеры могут работать с различными материалами, но самыми востребованной услугой остается плоттерная резка пленки и наклеек.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><video muted="" autoplay="" loop="" width="100%">
   <source src="/video/ploternaia-porezka.mp4">
  </video></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              

</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Плоттерная порезка рекламной продукции', ' ', 3);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 18, 'на-баннерной-ткани', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Печать на баннерной ткани</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Широко используется в рекламе баннерная ткань. Это композиционный материал, состоящий из прочной основы и винила. Такое сочетание дает: эластичность, универсальность, лояльность к перепадам температур, влагостойкость, долгий срок службы, прекрасная цветопередача, в равной степени подходит для внутреннего и наружного использования. И это все при не больших денежных затратах. Для того, что бы надежно закрепить баннер – устанавливаются люверсы (металлические кольца) по периметру, что позволяет сделать идеально ровное натяжение. Удобство заключается в том, что в любой момент можно демонтировать баннер, не повреждая ни стену, ни материал.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><video muted="" autoplay="" loop="" width="100%">
   <source src="/video/pechat-na-bannernoi-tkani.mp4">
  </video></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              





</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать на баннерной ткани', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 19, 'на-перфоплёнке', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Печать на перфоплёнке</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Перфопленка – разновидность самоклеющейся пленки и это уникальный материал. Поверхность с клеевым слоем – черная, а лицевая сторона пленки – белая, куда и наноситься изображение. Этот материал прекрасно пропускает свет и создает эффект тонировки, перфорационные отверстия занимают 50% всей площади, но на расстоянии их не видно и изображение смотрится целостно. Пользуется большой популярностью для оклейки стекол автотранспорта, так как она не мешает обзору пассажиров. Так же используется для оклейки витрин магазинов и стеклянных фасадов зданий. Немаловажное условие, это устойчивость к неблагоприятным погодным условиям. Приклеивать пленку с перфорацией можно только на гладкую поверхность.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        

        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              





</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать на перфоплёнке', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 20, 'на-виниловой-плёнке', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Печать на виниловой плёнке</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Виниловая пленка (самоклейка) особо популярна, это практично и не дорого.</p>

<p>Мы печатаем на прозрачной, белой матовой, белой глянцевой пленке.</p>

<p>У нас можно заказать:</p>

<ul>

<li>Самоклеющиеся этикетки</li>

<li>Фигурные наклейки с плоттерной порезкой</li>

<li>Наклейки с QR</li>

<li>Прозрачные стикеры</li>

<li>Наклейки интерьерные, напольные, настенные, наклейки на окна</li>

<li>Наклейки с ламинацией</li>

<li>Наклейки на авто</li>
</ul><p>Самоклейку можем заламинировать, это позволяет защитить печатные изделия и продлить их срок службы.</p>	
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        

        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              





<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/широкоформатная-печать/на-баннерной-ткани">Печать на баннерной ткани</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/широкоформатная-печать/на-перфоплёнке">Печать на перфоплёнке</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link active" href="/ru/услуги/широкоформатная-печать/на-виниловой-плёнке">Печать на виниловой плёнке</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/широкоформатная-печать/на-постерной-бумаге">Печать на постерной бумаге</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/широкоформатная-печать/на-холсте">Печать на холсте</a>
</li>
<li class="nav-item col-md-12 p-0">
  <a class="list-group-item list-group-item-action list-group-item-secondary nav-link" href="/ru/услуги/широкоформатная-печать/ламинация">Ламинация</a>
</li></ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать на виниловой плёнке', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 21, 'на-постерной-бумаге', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Печать на постреной бумаге</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Постер (плакат) это самый востребованный способ заявить о каком-либо событии или прорекламировать товар. Максимально качественно напечатаем яркий плакат в рекламных или любых других целях. Опыт подсказывает, что особой популярностью пользуются плакаты А3, но наше оборудование позволяет напечатать любой формат и А2, А1, А0 или просто не стандартный размер. Вы можете нам прислать готовые файлы в печать или заказать разработку макета в нашей дизайн-студии. Выполняем печать от 1 экземпляра.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        

        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              










</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать на постерной бумаге', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 22, 'на-холсте', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Печать на холсте</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Одним из популярных способов оформления интерьера, является печать фотографий и репродукций картин и на холсте. Такая картина станет отличным подарком к торжеству и солидным подарком для деловых партнеров. Холст привлекает своей натуральностью и изысканностью, но с преимуществом в оперативности и стоимости. Цена ниже, чем у профессиональных художников, а по качеству не уступает оригинальным картинам. Наши специалисты оказывают услугу галерейной натяжки на подрамник - изображение на холсте переходит на боковые стороны самого подрамника и закрепляется с обратной стороны подрамника, такое оформление не требует багетной рамы.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        

        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              










</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Широкоформатная печать на холсте', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 23, 'ламинация', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Ламинация</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Широкоформатное ламинирование используют, как для интерьерной печати (плакаты, стенды, постеры), так и для наружной рекламы (афиши, рекламные щиты). Это позволяет защитить печатные изделия и продлить их срок службы. Широкоформатное ламинирование позволяет наносить ламинат на отпечатанные изображения для пола. Выполняется как одностороннее, так и двустороннее ламинирование.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        

        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              










</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Ламинация рекламной продукции', ' ', 4);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 24, 'маршрутки', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама в маршрутках</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Размещение рекламы в маршрутках это эффективный и недорогой способ продвижения товаров и услуг повседневного спроса.
</p>
<p>
Поездка из Киева в Бровары и по Броварам длится не менее 30 минут. За это время пассажир успевает ознакомиться и запомнить рекламную информацию.
</p>
<p>
Как показывает многолетний опыт, население Броваров и пригорода положительно относится к такой рекламе и склонно ей доверять.
</p>
<p>
Мы предоставляем услугу по внутренней рекламе в маршрутном автобусе , это самоклеящаяся аппликация, которая располагается на боковых стеклах внутри салона и расположена на уровне глаз потребителя. Наклейки изготавливаем сами или заказчик может предоставить уже готовый вариант.
</p>
<p>
.После размещения рекламы, заказчик получает на электронную почту обязательно фотоотчет с изображением каждой наклейки и фото автобуса с номерным знаком.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/razmeshenie-v-marshrutkah/reklama-v-brovarah-razmeshenie-v-marshrutkah-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              













</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах в маршрутках', ' ', 5);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 25, 'на-мосту', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама на мосту</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Достаточно высокоэффективный способ, это размещение рекламы над путепроводами. Предлагаем рекламные площади на Броварском мосту в направлении Торгмаша. Вашу рекламу, в день, увидят тысячи людей, благодаря достаточно оживленному движению и чистой, хорошо просматриваемой местности. Размер баннерного полотна 6х2 метра. Также предлагаем услуги по дизайну, изготовлении и монтажу.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah\reklamnaia-ploshad-na-mostu\reklama-v-brovarah-reklamnaia-ploshad-na-mostu-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              













</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах на мосту', ' ', 5);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 26, 'на-остановках', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама на остановках</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Через остановку транспорта проходит в сутки большое количество людей. В среднем режим ожидания транспорта от 3-х до 40 минут, плюс визуальный контакт людей находящихся в маршрутке. Общее число контактов достаточно большое. Этого времени вполне достаточно для того, чтобы ознакомиться с информацией, запомнить, записать или сфотографировать на телефон нужные сведения.
</p>
<p>
«Бровары Реклама» предоставляет услугу размещения рекламы на остановках.
</p>
<p>
На одной остановке расположено 3 рекламных щита размером 130х100см. Можно арендовать как одно рекламное место, так и два или три. Все размещения официальны и имеют разрешение от администрации города.
</p>
<p>
Остановки по адресам:
</p>
<ul>
<li>
Бровары, ул.Киевская 29
</li>
<li>
Бровары, ул.Киевская 42
</li>
<li>
Бровары, ул.Киевская 62
</li>
<li>
Бровары, ул.Киевская 137
</li>
<li>
Бровары, ул.Киевская 149
</li>
<li>
Бровары, ул.Киевская 152
</li>
</ul>	
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/razmeshenie-na-ostanovkach/reklama-v-brovarah-razmeshenie-na-ostanovkach-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div><div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/razmeshenie-na-ostanovkach/reklama-v-brovarah-razmeshenie-na-ostanovkach-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              









</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах на остановках', ' ', 5);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 27, 'размещение-на-билбордах', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама на билбордах</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>
Билборды располагаются вдоль автомобильных дорог и на оживленных улицах города Бровары, тем самым привлекают внимание, как автовладельцев, так и пассажиров. Запросить сетку размещения бордов по Броварам, всегда можно по электронному адресу <span><a href="mailto:brovreklama@ukr.net">brovreklama@ukr.net</a></span> или по офисному телефону +38(097)003-40-43. Плоскости сдаются, как под рекламу, так и под не коммерческое использование, например, поздравление. Наши сотрудники студии дизайна помогут в разработке макета, и с воплощением самых привлекательных образов соответствующих событию. На своем оборудовании, осуществляем печать бордов и так же есть услуга монтажа.
</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah/razmeshenie-na-billbordah/reklama-v-brovarah-razmeshenie-na-billbordah-2.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              









</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах на билбордах', ' ', 5);
INSERT INTO "public"."subservice" VALUES (1548581641986, 1548581641986, 28, 'размещение-на-рекламной-стене', 'name', 'description', '<div class="animated fadeIn">
  <div class="row">
    <div class="col-sm-12 col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="jumbotron pt-0 p-3 mb-0 text-center">
            <h1 class="display-4 mb-0">Реклама на стене</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <div class="card">
        <div class="card-body">
          <p>Достаточно выгодное расположение рекламы в Броварах, на фасаде здания по улице Киевская 219. Рядом располагается т-образный перекресток с ограничительными знаками и общим снижением скорости транспорта, как правило, реклама хорошо работает на таких участках. За счет большого размера баннера, открытого пространства и удаленности от дороги - всего 5 метров, все участники дорожного движения смогут ознакомиться с сюжетом. Баннера печатаем на собственном оборудовании. Наша студия дизайна поможет Вам в разработке яркого и стильного сюжета.


</p>
          
          
          
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
  <div class="row" id="homepage">
    <div class="col-sm-6 col-md-6">
      <div class="row">
        
<div class="col-md-12">
          <div class="card">
            <div class="card-body"><img src="/images/uslugi/reklama-v-brovarah\razmeshenie-na-reklamnoi-stene\reklama-v-brovarah-razmeshenie-na-reklamnoi-stene-1.jpg" alt="" itemprop="thumbnailUrl" width="100%"></div>
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-sm-12 col-xl-6">
      <div class="card">
        <div class="card-body">
          <nav class="sidebar-nav ps">
            <ul class="nav br-0" id="secondary-menu">
            
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              









</ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>', 'ru', 'Бровары Реклама - Реклама в Броварах на рекламной стене', ' ', 5);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."archive_id_seq"
OWNED BY "public"."archive"."id";
SELECT setval('"public"."archive_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."language_id_seq"
OWNED BY "public"."language"."id";
SELECT setval('"public"."language_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menu_id_seq"
OWNED BY "public"."menu"."id";
SELECT setval('"public"."menu_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."page_id_seq"
OWNED BY "public"."page"."id";
SELECT setval('"public"."page_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."service_id_seq"
OWNED BY "public"."service"."id";
SELECT setval('"public"."service_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."subservice_id_seq"
OWNED BY "public"."subservice"."id";
SELECT setval('"public"."subservice_id_seq"', 29, true);

-- ----------------------------
-- Primary Key structure for table archive
-- ----------------------------
ALTER TABLE "public"."archive" ADD CONSTRAINT "archive_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table language
-- ----------------------------
ALTER TABLE "public"."language" ADD CONSTRAINT "language_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "public"."menu" ADD CONSTRAINT "menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table page
-- ----------------------------
ALTER TABLE "public"."page" ADD CONSTRAINT "page_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table service
-- ----------------------------
ALTER TABLE "public"."service" ADD CONSTRAINT "service_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table subservice
-- ----------------------------
ALTER TABLE "public"."subservice" ADD CONSTRAINT "subservice_pkey" PRIMARY KEY ("id");
