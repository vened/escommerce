-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "contents" ---------------------------------
CREATE TABLE `contents` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`page_id` Int( 11 ) NULL, 
	`lang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`body` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 28;
-- ---------------------------------------------------------


-- CREATE TABLE "html_module_languages" --------------------
CREATE TABLE `html_module_languages` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`html_module_id` Int( 11 ) NULL, 
	`lang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`body` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 23;
-- ---------------------------------------------------------


-- CREATE TABLE "html_modules" -----------------------------
CREATE TABLE `html_modules` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`position` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`lang` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`body` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 12;
-- ---------------------------------------------------------


-- CREATE TABLE "html_modules_pages" -----------------------
CREATE TABLE `html_modules_pages` ( 
	`html_module_id` Int( 11 ) NULL, 
	`page_id` Int( 11 ) NULL
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "jobs" -------------------------------------
CREATE TABLE `jobs` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`tag_path` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tag_text` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`body` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`created_at` DateTime NULL, 
	`updated_at` DateTime NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "pages" ------------------------------------
CREATE TABLE `pages` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`path` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`slug` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`parent_id` Int( 11 ) NULL, 
	`lft` Int( 11 ) NULL, 
	`rgt` Int( 11 ) NULL, 
	`depth` Int( 11 ) NULL, 
	`created_at` DateTime NULL, 
	`updated_at` DateTime NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- ---------------------------------------------------------


-- CREATE TABLE "schema_migrations" ------------------------
CREATE TABLE `schema_migrations` ( 
	`version` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
, 
	CONSTRAINT `unique_schema_migrations` UNIQUE( `version` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "staff_admins" -----------------------------
CREATE TABLE `staff_admins` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
	`encrypted_password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
	`reset_password_token` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`reset_password_sent_at` DateTime NULL, 
	`remember_created_at` DateTime NULL, 
	`sign_in_count` Int( 11 ) NOT NULL DEFAULT '0', 
	`current_sign_in_at` DateTime NULL, 
	`last_sign_in_at` DateTime NULL, 
	`current_sign_in_ip` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`last_sign_in_ip` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`created_at` DateTime NULL, 
	`updated_at` DateTime NULL,
	 PRIMARY KEY ( `id` )
, 
	CONSTRAINT `index_staff_admins_on_email` UNIQUE( `email` ), 
	CONSTRAINT `index_staff_admins_on_reset_password_token` UNIQUE( `reset_password_token` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- Dump data of "contents" ---------------------------------
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '1', '1', 'ru', 'Главная', NULL );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '3', '3', 'ru', 'О компании', '<h1>О компании<br/></h1><p>Уже более 5 лет мы строим свою работу на двух основных принципах: Уважение и Партнерство, ежедневно превращая эти слова в действие.</p>&#10;<p>Уважение и Партнерство в построении команды внутри нашей компании, в выстраивании отношений с нашими клиентами.</p>&#10;<p>Наш успех подтверждается через признание нашей работы крупнейшими российскими и западными компаниями.</p>&#10;<p>&#10;<span class="color1">Мы постоянно стремимся создавать что-то новое для наших клиентов, обеспечивая им стабильность в вопросах подбора персонала и оперативное решение поставленных перед нами задач. </span>&#10;</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '4', '3', 'en', 'About', '<h1>About</h1><p>&#10;For already more than 5 years we are building our work basing on two fundamental approaches: Respect and Partnership, turning these words into action on a daily basis.&#10;</p>&#10;<p>&#10;Respect and Partnership in building up the team of our company, in building up relations with our clients.&#10;</p>&#10;<p>&#10;Our success is confirmed through recognition of our work by the largest Russian and western companies.&#10;</p>&#10;<p>&#10;<span class="color1">&#10;We constantly aspire to create something new-brand for our clients, providing stability in questions of staff recruitment and<br/>immediate solutions for assigned tasks.&#10;</span></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '5', '1', 'en', 'Home', '<p> <br/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '6', '4', 'ru', 'Сферы деятельности', '<h1>Сферы деятельности</h1>&#10;<p><img src="/assets/tmp/img10.jpg"/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '7', '4', 'en', 'Our activities', '<h1>Our activities</h1>&#10;<p><img src="/assets/tmp/en/img10.jpg"/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '8', '5', 'ru', 'Команда HRC TSM', '<h1>Команда HRC TSM</h1>&#10;<p><img src="/assets/tmp/img11.jpg" border="0"/></p>&#10;<br/>&#10;<p>HR Center TSM использует исключительно индивидуальный командный подход к каждому проекту и задаче клиента.</p>&#10;<p>Мы работаем комплексно над проектами для обеспечения максимального качества и оперативности.</p><p><br/></p>&#10;<p><img src="/assets/tmp/img12.jpg" border="0"/></p>&#10;<p>Вместе <strong>Руководитель группы и Специалисты по подбору или Ведущий консультант, который работает самостоятельно</strong>, реализовывая каждый&#10;  проект, представляют клиенту исключительно индивидуальный подход, высокий уровень услуг, достойных кандидатов, безусловно соответствующих заявленным&#10;  требованиям.&#10;</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '9', '5', 'en', 'HRC TSM team', '<h1>HRC TSM team</h1>&#10;<p><img src="/assets/tmp/en/img11.jpg" border="0"/></p>&#10;<br/>&#10;<p>HR Center TSM takes advantage of exclusively individual team approach to each project and task of a client.</p>&#10;<p>We work on projects comprehensively to provide maximum quality and operational efficiency.</p><p><br/></p>&#10;<p><img src="/assets/tmp/en/img12.jpg" border="0"/></p>&#10;<p>&#10;  Together Team leader and Recruiters or Leading consultant who works independently, while realizing each project they present exclusively individual&#10;  approach, top-flight services, deserving candidates that undoubtedly correspond to stated demands.&#10;</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '10', '6', 'ru', 'Карьера в HRC TSM', '<h1>Карьера в HRC TSM</h1>&#10;<img src="/assets/tmp/img13.jpg" border="0"/>&#10;<br/>&#10;<p>Сотрудники HR Center TSM амбициозны и нацелены на развитие и карьеру. Если вы именно такой человек, не удивительно, что вы заинтересованы и&#10;  оцениваете, как и где ваша карьера будет развиваться. И вы сами коротко можете ответить себе: «Практически в любом месте» - потому что ваши новые&#10;  достижения зависят только от вас.&#10;</p>&#10;<p>Мы готовы предложить интересные перспективы как специалистам с глубоким опытом для дальнейшей реализации себя в компании и достижения новых целей,&#10;  так и молодым специалистам без опыта работы в данной сфере по программе Hi Po.&#10;</p>&#10;<br/>&#10;<p><img src="/assets/tmp/img14.jpg" border="0"/></p>&#10;<br/>&#10;<table border="0">&#10;  <tbody>&#10;  <tr>&#10;    <td>&#10;      <p class="color1">Тем, кто с нами мы гарантируем:</p>&#10;      <ul>&#10;        <li>Перспективную и активную работу</li>&#10;        <li>Стабильность и социальные гарантии</li>&#10;        <li>Современные мотивационные схемы</li>&#10;        <li>Возможность личного развития и карьерного роста</li>&#10;      </ul>&#10;    </td>&#10;    <td style="width: 40px;"><br/></td>&#10;    <td>&#10;      <p class="color1">От тех, кто с нами, мы ожидаем:</p>&#10;      <ul>&#10;        <li>Эффективность и нацеленность на результат</li>&#10;        <li>Командный подход в работе</li>&#10;        <li>Проактивность и инициативность</li>&#10;        <li>Вовлеченность и лояльность</li>&#10;      </ul>&#10;    </td>&#10;  </tr>&#10;  </tbody>&#10;</table>&#10;<h4><a class="color1" href="/jobs/jobs-hrc-tsm">Вакансии компании</a></h4>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '11', '6', 'en', 'Career at HRC TSM', '<h1>Career at HRC TSM</h1>&#10;<p><img src="/assets/tmp/en/img13.jpg" border="0"/></p>&#10;<br/>&#10;<p>&#10;  HR Center TSM employees are ambitious and aimed at development and career. If that is the case for you it is not surprising that you are interested&#10;  and evaluate how and where your career will develop. And you can give a short answer to yourself: &#34;Nearly everywhere&#34; - because your new&#10;  achievements depend only upon you.&#10;</p>&#10;<p>&#10;  We are ready to propose interesting perspectives both to specialists with profound experience for further self-realization in a company, for&#10;  achievement of new goals and to young specialists without experience in this area after program Hi Po.&#10;</p>&#10;<br/>&#10;<p><img src="/assets/tmp/en/img14.jpg" border="0"/></p>&#10;<br/>&#10;<table border="0">&#10;  <tbody>&#10;  <tr>&#10;    <td>&#10;      <p class="color1">To those who are with us we guarantee:</p>&#10;      <ul>&#10;        <li>Job with good prospects</li>&#10;        <li>Stability and social security</li>&#10;        <li>Modern KPI standards </li>&#10;        <li>Possibility for self-development and career growth</li>&#10;      </ul>&#10;    </td>&#10;    <td style="width: 40px;"><br/></td>&#10;    <td>&#10;      <p class="color1">From those who are with us we expect:</p>&#10;      <ul>&#10;        <li>Efficiency and commitment to results</li>&#10;        <li>Team approach at work</li>&#10;        <li>Proactivity and initiativity</li>&#10;        <li>Engagement and loyalty</li>&#10;      </ul>&#10;    </td>&#10;  </tr>&#10;  </tbody>&#10;</table>&#10;<h4><a class="color1" href="/jobs/jobs-hrc-tsm">Vacancies company</a></h4>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '12', '7', 'ru', 'Услуги', '<h1>Услуги по подбору персонала</h1>&#10;<p><img src="/assets/tmp/img17.jpg" border="0"/></p>&#10;<br/>&#10;<p>Сегодня на конкурентном рынке рекрутмента довольно сложно найти достойного партнера по вопросам подбора персонала, так же как и достойных&#10;  кандидатов для Вашей компании.&#10;</p>&#10;<p><strong>Мы уверены, наши подходы помогают достичь того, чего не могут наши конкуренты. </strong></p>&#10;<ul>&#10;  <li>Мы не направим Вам десятки резюме с уточнением, кого же из представленных кандидатов Вы хотите видеть. Мы представим Вам два-три профиля,&#10;    которые на самом деле соответствуют вашим потребностям, и <strong>Вы без труда сделаете свой выбор</strong>.&#10;  </li>&#10;  <li>Мы знаем, как найти достойного кандидата для Вашей цели, потому что мы работаем на этом рынке уже много лет.</li>&#10;  <li>Мы регулярно получаем обратную связь от наших партнеров и кандидатов о том, что они ощущают разницу при работе с нами.</li>&#10;</ul>&#10;<p>Если Вы серьезно настроены работать с лидером рынка в секторе подбора персонала, мы готовы ответить на все Ваши вопросы и обсудить формат&#10;  сотрудничества в любое удобное для Вас время. <br/><br/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '13', '7', 'en', 'Services', '<h1>Recruitment services</h1>&#10;<p><img src="/assets/tmp/en/img17.jpg" border="0"/></p>&#10;<br/>&#10;<p>Today on the competitive market of recruitment it is quite hard to find a worthy partner regarding personnel recruitment, as well as deserving&#10;  candidates for your Company.&#10;</p>&#10;<p><strong>We are sure that our approaches help to reach what can\'t be reached by our opponents.</strong></p>&#10;<ul>&#10;  <li>We won\'t forward you tens of CVs specifying who of presented candidates do you want to see. We will provide you two or three profiles that&#10;    trully correspond your needs and you will easily make your choise.&#10;  </li>&#10;  <li>We know how to find a deserving candidate for your goal because we\'ve been working on this market for many years.</li>&#10;  <li>We receive feedback from our partners and candidates on a regular basis, saying they feel the difference when working with us.</li>&#10;</ul>&#10;<p>If you are seriously intended to work with leader of recruitment market we are ready to satisfy any of your question and to discuss the format of&#10;  our collaboration at your convenience.&#10;</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '14', '8', 'ru', 'Проекты Executive Search', '<h1>Проекты Executive Search</h1>&#10;<p><img src="/assets/tmp/img18.jpg" border="0"/></p>&#10;<br/>&#10;<p>Бизнес движется со скоростью света. Разве это не время, чтобы Вы в партнерстве с профессиональными HR консультантами сделали следующий стратегический шаг?</p>&#10;<p>Executive Search – это поиск талантов: выявление и оценка выдающихся руководителей, посредничество в вовлечении их в Ваш бизнес.</p>&#10;<p>Мы видим свою роль, как Executive Search партнера, не только в том, чтобы удовлетворять Ваши ожидания в поиске лучших кандидатов, но и выступать в качестве консультантов, владеющих информацией о состоянии рынка и лучших кандидатах.</p>&#10;<p>Успешно реализованные проекты Executive Search дают нам уверенность в отличном результате будущих задач для Вашего бизнеса.</p>&#10;<p> </p>&#10;<p><img src="/assets/tmp/img19.jpg" border="0"/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '15', '8', 'en', 'Executive Search projects', '<h1>Executive Search projects</h1>&#10;<p><img src="/assets/tmp/en/img18.jpg" border="0"/></p>&#10;<br/>&#10;<p>Business runs at speed of light. Isn’t that the right moment for you to make the next strategic step in partnership with professional HR consultants? </p>&#10;<p>Executive Search – is a search for talents: revealing and estimating outstanding managers, employment mediation to involve them in your business.</p>&#10;<p>We see our role as Executive Search partner not only in satisfying your expectations in a search for best candidates, but also in being a consultant that possesses information about market condition and best candidates. </p>&#10;<p>Successfully realized projects of Executive Search give us confidence in excellent result of prospective objectives for your business.</p>&#10;<p> </p>&#10;<p><img src="/assets/tmp/img19.jpg" border="0"/></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '16', '9', 'ru', 'Комплексное исследование рынков', '<h1>Комплексное исследование рынков</h1>&#10;<p><img src="/assets/tmp/img20.jpg"/></p>&#10;<br/>&#10;<p>В HRC TSM создано отдельное подразделение – группа аналитиков, которая занимается проведением маркетинговых исследований HR рынка и подготовкой обзоров заработных плат&#10;  специалистов различных сфер и уровней.&#10;</p>&#10;<p><strong>Основными блоками исследования являются: </strong></p>&#10;<ul>&#10;  <li>Детальный анализ для определения основных тенденций развития рынка</li>&#10;  <li>Анализ уровеня оплаты труда</li>&#10;  <li>Прогнозы на ближайшую перспективу развития рынка</li>&#10;</ul>&#10;<div class="moduletable_scope clearFix">&#10;  <p>Мы предоставляем анализ рынка любой из сфер бизнеса, в которой мы профилируемся и имеем широкий опыт:</p>&#10;  <ul class="scope col-1">&#10;    <li class="li-1"><a href="#">Pharma</a></li>&#10;    <li class="li-2"><a href="#">Retail</a></li>&#10;    <li class="li-3"><a href="#">Construction &amp; Engineering</a></li>&#10;    <li class="li-4"><a href="#">FMCG</a></li>&#10;    <li class="li-5"><a href="#">Logistic</a></li>&#10;    <li class="li-6"><a href="#">Industry</a></li>&#10;  </ul>&#10;  <ul class="scope col-2">&#10;    <li class="li-7"><a href="#">Oil &amp; Gas</a></li>&#10;    <li class="li-8"><a href="#">IT &amp; Telecommunication</a></li>&#10;    <li class="li-9"><a href="#">Food Industry </a></li>&#10;    <li class="li-10"><a href="#">Consulting</a></li>&#10;    <li class="li-11"><a href="#">Banks &amp; Insurance </a></li>&#10;  </ul>&#10;</div>&#10;<p>По запросу партнера в исследование возможно включить дополнительные необходимые блоки.</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '17', '9', 'en', 'Comprehensive market research', '&#10;<h1>Comprehensive market research</h1>&#10;<p><img src="/assets/tmp/en/img20.jpg" border="0"/></p>&#10;<br/>&#10;<p>There was established a separate subdivision at HRC TSM - a group of analysts who lead marketing researches at HR market and who prepares salary reports on specialists of&#10;  different skill levels and professional areas.&#10;</p>&#10;<p><strong>Essential blocks of research are:</strong></p>&#10;<ul>&#10;  <li>Detailed analysis to define main tendencies of market development.</li>&#10;  <li>Analysis of the nearest prospect of market development</li>&#10;  <li>Forecast for the nearest prospect of market development</li>&#10;</ul>&#10;<div class="moduletable_scope clearFix">&#10;  <p>We provide market analysis of any business area we specialize in and have a profound experience:</p>&#10;  <ul class="scope col-1">&#10;    <li class="li-1"><a href="#">Pharma</a></li>&#10;    <li class="li-2"><a href="#">Retail</a></li>&#10;    <li class="li-3"><a href="#">Construction &amp; Engineering</a></li>&#10;    <li class="li-4"><a href="#">FMCG</a></li>&#10;    <li class="li-5"><a href="#">Logistic</a></li>&#10;    <li class="li-6"><a href="#">Industry</a></li>&#10;  </ul>&#10;  <ul class="scope col-2">&#10;    <li class="li-7"><a href="#">Oil &amp; Gas</a></li>&#10;    <li class="li-8"><a href="#">IT &amp; Telecommunication</a></li>&#10;    <li class="li-9"><a href="#">Food Industry </a></li>&#10;    <li class="li-10"><a href="#">Consulting</a></li>&#10;    <li class="li-11"><a href="#">Banks &amp; Insurance </a></li>&#10;  </ul>&#10;</div>&#10;<p>It is possible to include additionally desired blocks into research at client\'s requirement.</p>&#10;&#10;&#10;&#10;&#10;&#10;&#10;' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '18', '10', 'ru', 'Партнёрам', '<h1>Партнёрам</h1>&#10;<p><img src="/assets/tmp/img8.jpg"/></p>&#10;<br/>&#10;<p><strong>Как партнеры HRC TSM Вы помогли нам стать одним из ведущих поставщиков услуг по подбору персонала в России.</strong></p>&#10;<p><strong>Так что самое меньшее, что мы могли бы для Вас сделать, – это по-прежнему выполнять все свои обязательства и продолжать оказывать Вам первоклассные услуги.</strong></p>&#10;<p>Начиная сотрудничество, мы нацелены предоставить нашим партнерам исключительно оперативный результат.</p>&#10;<p>На основании систематических исследований рынка по тем направлениям, с которыми работает HRC TSM:</p>&#10;<ul>&#10;<li>Владеем ситуацией по рынку и основными тенденциями</li>&#10;<li>Имеем уникальную базу резюме</li>&#10;<li>Постоянно находимся в контакте с интересными кандидатами, в том числе с теми, кто не ищет активно работу, но готовы рассматривать интересные предложения</li>&#10;<li>Оптимизируем и расширяем ресурсы (в том числе международные) по тому или иному направлению бизнеса</li>&#10;</ul>&#10;<p>Мы работаем с вакансиями Middle и Top уровня по тем направлениям бизнеса, в которых свободно ориентируемся и владеем информацией, чтобы предоставить партнеру качественный и оперативный результат.</p>&#10;<p>Поэтому, получив проект клиента в работу, мы прежде всего оцениваем свой опыт, потенциал и возможности и ведем с клиентом открытые переговоры.</p>&#10;<p><a href="/employer/feedback-from-our-partners" class="color1"><strong><span class="breadcrumbs pathway">Отзывы наших партнёров</span></strong></a></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '19', '10', 'en', 'For partners', '<h1>For partners</h1>&#10;<p><img src="/assets/tmp/img8.jpg"/></p>&#10;<br/>&#10;<p><strong>As HRC TSM partners you helped us to become one of the leading providers of recruitment services in Russia.</strong></p>&#10;<p><strong>Thus the least we could do for you - is to fulfill our commitments as before and to continue providing you first-class services.</strong></p>&#10;<p>Beginning a collaboration we are targeted at providing extra prompt result to our partners.</p>&#10;<p>Basing on methodical researches of the market in directions challenging for HRC TSM:</p>&#10;<ul>&#10;<li>We master the situation of the market and principal tendencies</li>&#10;<li>We possess a unique CV base</li>&#10;<li>We are in constant contact with interesting candidates including those who are not in active job search, but ready to consider interesting proposals. </li>&#10;<li>We optimize and enlarge resources (including international ones) on various business directions.</li>&#10;</ul>&#10;<p>We work with Middle and Top level vacancies of business directions we freely orient ourself at and possess information to provide the partner hight-quality and time-efficient result. </p>&#10;<p>That is why when receiving clinet\'s prject in operation we first of all evaluate our experience, potential and possibilities and frankly negotiate with our partner.</p>&#10;<p><a href="/employer/feedback-from-our-partners" class="color1"><strong><span class="breadcrumbs pathway">Feedback of our partners</span></strong></a></p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '20', '11', 'ru', 'Отзывы наших партнёров', '<h1>Отзывы наших партнёров</h1>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/danfoss.pdf" class="fl-l"> <img src="/assets/tmp/klients/danfoss.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/2.jpg" class="fl-r"> <img src="/assets/tmp/klients/2.jpg" border="0" width="320"/> </a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/gemalto.jpg" class="fl-l"> <img src="/assets/tmp/klients/gemalto-s.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/3.jpg" class="fl-r"> <img src="/assets/tmp/klients/3.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/1.jpg" class="fl-l"> <img src="/assets/tmp/klients/1.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/forbo-floring-7.jpg" class="fl-r"> <img src="/assets/tmp/klients/forbo-floring-7-s.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/a-and-d.pdf" class="fl-l"> <img src="/assets/tmp/klients/a-d-8-s.jpg" border="0" width="320"/> </a>&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_3.pdf" class="fl-r"> <img src="/assets/tmp/klients/hrtsm_07112012_3_s.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix">&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_1.jpg" class="fl-l"> <img src="/assets/tmp/klients/hrtsm_07112012_1_s.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_2.pdf" class="fl-r"> <img src="/assets/tmp/klients/hrtsm_07112012_2_s.jpg" border="0" width="320"/></a></div>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '21', '11', 'en', 'Feedback of our partners', '<h1>Feedback of our partners</h1>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/danfoss.pdf" class="fl-l"> <img src="/assets/tmp/klients/danfoss.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/2.jpg" class="fl-r"> <img src="/assets/tmp/klients/2.jpg" border="0" width="320"/> </a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/gemalto.jpg" class="fl-l"> <img src="/assets/tmp/klients/gemalto-s.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/3.jpg" class="fl-r"> <img src="/assets/tmp/klients/3.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/1.jpg" class="fl-l"> <img src="/assets/tmp/klients/1.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/forbo-floring-7.jpg" class="fl-r"> <img src="/assets/tmp/klients/forbo-floring-7-s.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix"><a target="_blank" href="/assets/tmp/klients/a-and-d.pdf" class="fl-l"> <img src="/assets/tmp/klients/a-d-8-s.jpg" border="0" width="320"/> </a>&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_3.pdf" class="fl-r"> <img src="/assets/tmp/klients/hrtsm_07112012_3_s.jpg" border="0" width="320"/></a></div>&#10;<hr/>&#10;<div class="clearFix">&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_1.jpg" class="fl-l"> <img src="/assets/tmp/klients/hrtsm_07112012_1_s.jpg" border="0" width="320"/></a>&#10;  <a target="_blank" href="/assets/tmp/klients/hrtsm_07112012_2.pdf" class="fl-r"> <img src="/assets/tmp/klients/hrtsm_07112012_2_s.jpg" border="0" width="320"/></a></div>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '22', '12', 'ru', 'Кандидатам', '<h1>Кандидатам</h1>&#10;<div class="open-vakansy"><img src="/assets/tmp/img13.jpg" border="0"/> <strong><a href="/jobs" class="link-3">Открытые вакансии</a></strong></div>&#10;<br/>&#10;<p>В портфеле заказов HR Center TSM вакансии крупных западных и российских компаний, предлагающих интересную работу, перспективные проекты, обеспечивающие развитие и профессиональный рост кандидатам с активной жизненной позицией и  амбициозными карьерными планами.</p>&#10;<p>Высококвалифицированные Менеджеры HRC TSM нацелены исключительно на то, чтобы предоставить Вам возможность найти работу, максимально отвечающую Вашим интересам.</p>&#10;<p>Мы всегда рады сотрудничеству с Вами!</p>&#10;<p> </p>&#10;<p><span class="color1">Свяжитесь с нами любым удобным для Вас способом:</span></p>&#10;<ul>&#10;<li>По телефону +7 (495) 98-00-765</li>&#10;<li class="mailto">Пришлите Ваше резюме по e-mail <a href="mailto:cv@hrtsm.ru">cv@hrtsm.ru</a></li>&#10;</ul>&#10;<p>Мы рады помочь Вам в поиске достойной работы, обеспечивающей стабильный высокий доход и карьерный рост!</p>&#10;' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '23', '12', 'en', 'For candidates', '<h1>For candidates</h1>&#10;<div class="open-vakansy">&#10;  <img src="/assets/tmp/en/img13.jpg" border="0"/> <strong><a href="/jobs" class="link-3">Open positions</a></strong>&#10;</div>&#10;<br/>&#10;<p>Order portfolio of HR Center TSM comprises vacancies of western and Russian companies, that propose interesting job, promisisng projects ensuring development and professiоnal advancement for candidates with active life attitude and ambitious career plans.</p>&#10;<p>Highly skilled managers of HRC TSM are particularly aimed at presenting you a possibility to find a job that to the maximum degree responds your interests. </p>&#10;<p>We are always glad to cooperate with you!</p>&#10;<p> </p>&#10;<p><span class="color1">Contact us in the way most convenient for you:</span></p>&#10;<ul>&#10;<li>Telephone +7 (495) 98-00-765</li>&#10;<li class="mailto">Send us your CV to e-mail <a href="mailto:cv@hrtsm.ru">cv@hrtsm.ru</a></li>&#10;</ul>&#10;<p>We are glad to assist you in a search for worthy job that provides you with stable high income and career promotion!</p>&#10;' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '24', '13', 'ru', 'Вакансии', '<h1>Вакансии</h1>&#10;<p><img src="/assets/tmp/img16.jpg"/></p>&#10;<br/>&#10;<p>Уважаемые кандидаты!</p>&#10;<p>Мы работаем с крупнейшими российскими и западными компаниями различных сфер деятельности.</p>&#10;<p>Уверены у нас Вы найдете для себя интересную и перспективную работу.</p>&#10;&#10;<p>Выбрав интересующую вас область деятельности, Вы сможете ознакомиться с рядом открытых позиций и выслать резюме на рассмотрение: &#10;<a href="http://hh.ru/employer/246683" target="_blank" class="color1">http://hh.ru/employer/246683</a></p>&#10;<p>Желаем успехов в поиске работы.</p>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '25', '13', 'en', 'Vacancies', '<h1>Vacancies</h1>&#10;<p><img src="/assets/tmp/en/img16.jpg"/></p>&#10;<br/>&#10;<p>Dear candidates!</p>&#10;<p>We are working with the largest Russian and westrn companies of various business dimensions.</p>&#10;<p>We are confident that you will find an interesting and promising job for yourself.</p>&#10;<p>After choosing an interesting activity area for yourself you are be able to get acquainted with a range of open positions and to forward us CV for&#10;  concideration.&#10;<a href="http://hh.ru/employer/246683" target="_blank" class="color1">http://hh.ru/employer/246683</a></p>&#10;<p>We wish you success in your job search.</p>&#10;' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '26', '14', 'ru', 'Контакты', '<h1>Контакты</h1>&#10;<p><span class="color1">Наш адрес:</span> 115114, г. Москва, м. Павелецкая, БЦ «Святогор», ул. Летниковская 10, стр.2, 4 этаж</p>&#10;<p><span class="color1">Телефон:</span> +7 (495) 98-00-765</p>&#10;<p><span class="color1">Факс:</span> +7 (495) 98-00-765</p>&#10;<p><span class="color1">E-mail:</span></p>&#10;<ul class="mailto">&#10;  <li>Для работодателей: <a href="mailto:client@hrtsm.ru">client@hrtsm.ru</a></li>&#10;  <li>Для соискателей: <a href="mailto:cv@hrtsm.ru">cv@hrtsm.ru</a></li>&#10;  <li>Отдел контроля качества: <a href="mailto:quality@hrtsm.ru">quality@hrtsm.ru</a></li>&#10;  <li>Общие предложения:<a href="mailto:info@hrtsm.ru">info@hrtsm.ru</a></li>&#10;</ul>' );
INSERT INTO `contents`(`id`,`page_id`,`lang`,`title`,`body`) VALUES ( '27', '14', 'en', 'Contacts', '<h1>Contacts</h1>&#10;<p><span class="color1">Our address:</span> 10 Letnikovskaya Street, unit 2, 4th floor, business-centre Sviatogor, subway statoin Paveletskaya, Moscow, postal code 115114.</p>&#10;<p><span class="color1">Telephone:</span> +7 (495) 98-00-765</p>&#10;<p><span class="color1">Fax:</span> +7 (495) 98-00-765</p>&#10;<p><span class="color1">E-mail:</span></p>&#10;<ul class="mailto">&#10;  <li>For employers: <a href="mailto:client@hrtsm.ru">client@hrtsm.ru</a></li>&#10;  <li>For jobseekers: <a href="mailto:cv@hrtsm.ru">cv@hrtsm.ru</a></li>&#10;  <li>Quality Control Department: <a href="mailto:quality@hrtsm.ru">quality@hrtsm.ru</a></li>&#10;  <li>General suggestions:<a href="mailto:info@hrtsm.ru">info@hrtsm.ru</a></li>&#10;</ul>' );
-- ---------------------------------------------------------


-- Dump data of "html_module_languages" --------------------
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '1', '1', 'ru', 'footer', '<div class="clear"></div>
<div class="wrapper clearFix" id="Footer">
  <div class="moduletable">
    <p class="fl-l">115114, г. Москва, м. Павелецкая, БЦ «Святогор», ул. Летниковская 10, стр.2, 4 этаж<br> +7 (495) 98-00-765 <br>
      <a href="mailto:info@hrtsm.ru">info@hrtsm.ru</a></p>
    <p class="fl-r">&copy; Copyright 2010 All rights reserved</p>
  </div>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '2', '2', 'ru', 'Наши партнеры | Карьера в HR Center TSM', '<div class="moduletable">
  <h3 class="h3_1">Наши партнеры</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Нашими партнерами являются крупнейшие западные и российские компании в ключевых направлениях: Pharma, Retail, Cons &amp; Ing, FMCG, Oil &amp; Gas.
  </p>
  <p><a href="/employer/feedback-from-our-partners" class="link-1">отзывы партнёров</a></p>
</div>
<div class="moduletable last">
  <h3 class="h3_1">Карьера в HR Center TSM</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    Мы открыты для талантливых, ярких и инициативных людей, которые стремятся к реализации своих целей посредством максимальной самоотдачи и
    ответственности за результат своей
    работы.
  </p>
  <p><a href="/about/career" class="link-1">вакансии HR Center TSM</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '3', '3', 'ru', 'Услуги по подбору персонала | Executive Search | Комплексное исследование рынков', '<div class="moduletable">
  <h3 class="h3_2">Услуги по подбору персонала</h3>
  <p><img src="/assets/tmp/img4.jpg" border="0"/></p>
  <p><a class="link-2" href="/service">подробнее об услуге</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_3">Проекты<br/>Executive Search</h3>
  <p><img src="/assets/tmp/img5.jpg" border="0"/></p>
  <p><a class="link-3" href="/service/executivesearch">подробнее об услуге</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_4">Комплексное<br/> исследование рынков</h3>
  <p><img src="/assets/tmp/img6.jpg" border="0"/></p>
  <p><a class="link-4" href="/service/research">подробнее об услуге</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '4', '1', 'en', 'footer', '<div class="clear"></div>
<div class="wrapper clearFix" id="Footer">
  <div class="moduletable">
    <p class="fl-l">10 Letnikovskaya Street, unit 2, 4th floor, business-centre Sviatogor, subway statoin Paveletskaya, Moscow, postal code 115114 <br>
      <a href="mailto:info@hrtsm.ru">info@hrtsm.ru</a></p>
    <p class="fl-r">&copy; Copyright 2010 All rights reserved</p>
  </div>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '5', '4', 'ru', 'header', '<div class="social">
  <p>Мы в соцсетях: <a target="_blank" href="http://www.facebook.com/pages/HR-Center-TSM/199365003433472" class="fb">Facebook</a>
    <a target="_blank" href="http://twitter.com/#!/hrctsm" class="tw">Twitter</a> <!--<a class="lj" href="#" mce_href="#">Livejournal</a>-->
  </p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '6', '4', 'en', 'blank', '<div class="social">
  <p>Follow us: <a target="_blank" href="http://www.facebook.com/pages/HR-Center-TSM/199365003433472" class="fb">Facebook</a>
    <a target="_blank" href="http://twitter.com/#!/hrctsm" class="tw">Twitter</a> <!--<a class="lj" href="#" mce_href="#">Livejournal</a>-->
  </p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '7', '5', 'ru', 'home_promo', '<div class="wrapper mb35 clearFix" id="HomeSlogan">
  <div class="moduletable">
    <!-- закладки -->
    <ul class="tabs">
      <li style="display: none;" class=""><a href="#" class="current">homes</a></li>
      <li class="tab1"><a href="#">Pharma</a></li>
      <li class="tab2"><a href="#">Retail</a></li>
      <li class="tab3"><a href="#">Construction &amp; Engineering</a></li>
      <li class="tab4"><a href="#">FMCG</a></li>
      <li class="tab7 last"><a href="#">Oil &amp; Gas</a></li>
    </ul>
    <!-- содержимое закладок -->
    <div class="panes">
      <div style="display: block;"><img border="0" src="/assets/home/1.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/2.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/3.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/4.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/5.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/8.jpg"></div>
      <a href="/about/activity" style="display: none;"> </a></div>
  </div>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '8', '5', 'en', 'home_promo', '<div class="wrapper mb35 clearFix" id="HomeSlogan">
  <div class="moduletable">
    <!-- закладки -->
    <ul class="tabs">
      <li style="display: none;" class=""><a href="#" class="current">homes</a></li>
      <li class="tab1"><a href="#">Pharma</a></li>
      <li class="tab2"><a href="#">Retail</a></li>
      <li class="tab3"><a href="#">Construction &amp; Engineering</a></li>
      <li class="tab4"><a href="#">FMCG</a></li>
      <li class="tab7 last"><a href="#">Oil &amp; Gas</a></li>
    </ul>
    <!-- содержимое закладок -->
    <div class="panes">
      <div style="display: block;"><img border="0" src="/assets/home/en/1.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/en/2.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/en/3.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/en/4.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/en/5.jpg"></div>
      <div style="display: none;"><img border="0" src="/assets/home/en/8.jpg"></div>
      <a href="/en/about/activity" style="display: none;"> </a></div>
  </div>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '9', '6', 'ru', 'home_button_1', '<div class="moduletable">
  <h3 class="h3_2"><br>Подбор персонала</h3>
  <p><img border="0" src="/assets/tmp/img4.jpg"></p>
  <div class="desc">
    <p>Сегодня на конкурентном рынке рекрутмента довольно сложно найти достойного партнера по вопросам подбора персонала, так же как и
      достойных кандидатов для Вашей компании.
    </p>
    <p>Мы уверены, наши подходы помогают достичь того, чего не могут наши конкуренты.</p>
  </div>
  <p><a href="/service" class="link-2">подробнее об услуге</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_3">Проекты<br>Executive Search</h3>
  <p><img border="0" src="/assets/tmp/img5.jpg"></p>
  <div class="desc">
    <p>Бизнес движется со скоростью света. Разве это не время, чтобы Вы в партнерстве с профессиональными HR консультантами сделали следующий
      стратегический шаг?
    </p>
    <p>Executive Search &ndash; это поиск талантов: выявление и оценка выдающихся руководителей, посредничество в вовлечении их в Ваш
      бизнес.
    </p>
  </div>
  <p><a href="/service/executivesearch" class="link-3">подробнее об услуге</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_4"><br>Исследование рынков</h3>
  <p><img border="0" src="/assets/tmp/img6.jpg"></p>
  <div class="desc">В HRC TSM создано отдельное подразделение &ndash; группа аналитиков, которая занимается проведением маркетинговых
    исследований HR рынка и подготовкой обзоров заработных плат специалистов различных сфер и уровней.
  </div>
  <p><a href="/service/research" class="link-4">подробнее об услуге</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '10', '6', 'en', 'blank', '<div class="moduletable">
  <h3 class="h3_2">Recruitment services</h3>
  <p><img border="0" src="/assets/tmp/img4.jpg"></p>
  <div class="desc">
    <p>
Today on the competitive market of recruitment it is quite hard to find a worthy partner regarding personnel recruitment, as well as deserving candidates for your Company.
    </p>
    <p>We are sure that our approaches help to reach what can\'t be reached by our opponents.</p>
  </div>
  <p><a href="/en/service" class="link-2">read more</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_3">Executive Search projects</h3>
  <p><img border="0" src="/assets/tmp/img5.jpg"></p>
  <div class="desc">
    <p>
Business runs at speed of light. Isn’t that the right moment for you to make the next strategic step in partnership with professional HR consultants? 
    </p>
    <p>
Executive Search – is a search for talents: revealing and estimating outstanding managers, employment mediation to involve them in your business.
    </p>
  </div>
  <p><a href="/en/service/executivesearch" class="link-3">read more</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_4">Comprehensive market research</h3>
  <p><img border="0" src="/assets/tmp/img6.jpg"></p>
  <div class="desc">
There was established a separate subdivision at HRC TSM - a group of analysts who lead marketing researches at HR market and who prepares salary reports on specialists of different skill levels and professional areas. 
  </div>
  <p><a href="/en/service/research" class="link-4">read more</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '11', '7', 'ru', 'home_button_2', '<div class="moduletable_partners">
  <h3 class="h3_1">Наши партнеры</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Нашими партнерами являются крупнейшие западные и российские компании в ключевых направлениях: Pharma, Retail, Cons &amp; Ing, FMCG, Oil &amp; Gas.
  </p>
  <p><a href="/employer/feedback-from-our-partners" class="link-1">отзывы партнёров</a></p>
</div>
<div class="moduletable_carier">
  <h3 class="h3_1">Карьера в HR Center TSM</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    Мы открыты для талантливых, ярких и инициативных людей, которые стремятся к реализации своих целей посредством максимальной самоотдачи и
    ответственности за результат своей
    работы.
  </p>
  <p><a href="/about/career" class="link-1">вакансии HR Center TSM</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '12', '7', 'en', 'blank', '<div class="moduletable_partners">
  <h3 class="h3_1">Our partners</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Our partners are presented as the largest westrn and Russian companies in key directions: Pharma, Retail, Cons & Ing, FMCG, Oil & Gas.
  </p>
  <p><a href="/en/employer/feedback-from-our-partners" class="link-1">feedback of our partners</a></p>
</div>
<div class="moduletable_carier">
  <h3 class="h3_1">Career at HR Center TSM</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    We are opened to talented, bright and initiative people that strain after realization of their goals through maximal self dedication and
    responsibility for result of their work.
  </p>
  <p><a href="/en/about/career" class="link-1">HR Center TSM vacancies</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '13', '2', 'en', 'blank', '<div class="moduletable">
  <h3 class="h3_1">Our partners</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Our partners are presented as the largest westrn and Russian companies in key directions: Pharma, Retail, Cons & Ing, FMCG, Oil & Gas.
  </p>
  <p><a href="/en/employer/feedback-from-our-partners" class="link-1">feedback of our partners</a></p>
</div>
<div class="moduletable last">
  <h3 class="h3_1">Career at HR Center TSM</h3>
  <p class="fl-l"><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    We are opened to talented, bright and initiative people that strain after realization of their goals through maximal self dedication and
    responsibility for result of their work.
  </p>
  <p><a href="/en/about/career" class="link-1">HR Center TSM vacancies</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '14', '3', 'en', 'blank', '<div class="moduletable">
  <h3 class="h3_2">Recruitment services</h3>
  <p><img src="/assets/tmp/img4.jpg" border="0"/></p>
  <p><a class="link-2" href="/en/service">read more</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_3">Executive Search projects</h3>
  <p><img src="/assets/tmp/img5.jpg" border="0"/></p>
  <p><a class="link-3" href="/en/service/executivesearch">read more</a></p>
</div>
<div class="moduletable">
  <h3 class="h3_4">Comprehensive market research</h3>
  <p><img src="/assets/tmp/img6.jpg" border="0"/></p>
  <p><a class="link-4" href="/en/service/research">read more</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '15', '8', 'ru', 'Мы специализируемся на следующих бизнес направлениях: | banner', '<div class="MaincolCenterModule clearFix">
  <div class="moduletable_scope clearFix">
    <h4>Мы специализируемся на следующих бизнес направлениях:</h4>
    <ul class="scope col-1">
      <li class="li-1"><a href="#">Pharma</a></li>
      <li class="li-2"><a href="#">Retail</a></li>
      <li class="li-3"><a href="#">Construction &amp; Engineering</a></li>
    </ul>
    <ul class="scope col-2">
      <li class="li-4"><a href="#">FMCG</a></li>
      <li class="li-7"><a href="#">Oil &amp; Gas</a></li>
    </ul>
  </div>
</div>
<!--BEGIN BANNER-->
<div class="Banner">
  <object width="693" height="374" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540001">
    <param value="sameDomain" name="allowScriptAccess">
    <param value="false" name="allowFullScreen">
    <param value="/assets/ban2.swf" name="movie">
    <param value="high" name="quality">
    <param value="transparent" name="wmode">
    <param value="#ffffff" name="bgcolor">
    <embed width="693" height="374" align="middle" pluginspage="http://www.adobe.com/go/getflashplayer" type="application/x-shockwave-flash"
    allowfullscreen="false" allowscriptaccess="sameDomain" name="logo" bgcolor="#ffffff" wmode="transparent" quality="high" src="/assets/ban2.swf">
  </object>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '16', '8', 'en', 'blank', '<div class="MaincolCenterModule clearFix">
  <div class="moduletable_scope clearFix">
    <h4>We specialize in the following business areas:</h4>
    <ul class="scope col-1">
      <li class="li-1"><a href="#">Pharma</a></li>
      <li class="li-2"><a href="#">Retail</a></li>
      <li class="li-3"><a href="#">Construction &amp; Engineering</a></li>
    </ul>
    <ul class="scope col-2">
      <li class="li-4"><a href="#">FMCG</a></li>
      <li class="li-7"><a href="#">Oil &amp; Gas</a></li>
    </ul>
  </div>
</div>
<!--BEGIN BANNER-->
<div class="Banner">
  <object width="693" height="374" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540001">
    <param value="sameDomain" name="allowScriptAccess">
    <param value="false" name="allowFullScreen">
    <param value="/assets/ban2En.swf" name="movie">
    <param value="high" name="quality">
    <param value="transparent" name="wmode">
    <param value="#ffffff" name="bgcolor">
    <embed width="693" height="374" align="middle" pluginspage="http://www.adobe.com/go/getflashplayer" type="application/x-shockwave-flash"
    allowfullscreen="false" allowscriptaccess="sameDomain" name="logo" bgcolor="#ffffff" wmode="transparent" quality="high" src="/assets/ban2En.swf">
  </object>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '17', '9', 'ru', 'Наши партнеры | Карьера в HR Center TSM', '<div class="moduletable">
  <h3 class="h3_1">Наши партнеры</h3>
  <p><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Нашими партнерами являются крупнейшие западные и российские компании в ключевых направлениях: Pharma, Retail, Cons &amp; Ing, FMCG, Oil &amp; Gas.
  </p>
  <p><a href="/employer/feedback-from-our-partners" class="link-1">отзывы партнёров</a></p>
</div>
<div class="moduletable last">
  <h3 class="h3_1">Карьера в HR Center TSM</h3>
  <p><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    Мы открыты для талантливых, ярких и инициативных людей, которые стремятся к реализации своих целей посредством максимальной самоотдачи и
    ответственности за результат своей
    работы.
  </p>
  <p><a href="/about/career" class="link-1">вакансии HR Center TSM</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '18', '9', 'en', 'blank', '<div class="moduletable">
  <h3 class="h3_1">Our partners</h3>
  <p><img border="0" src="/assets/tmp/img3.jpg"></p>
  <p>
    Our partners are presented as the largest westrn and Russian companies in key directions: Pharma, Retail, Cons & Ing, FMCG, Oil & Gas.
  </p>
  <p><a href="/en/employer/feedback-from-our-partners" class="link-1">feedback of our partners</a></p>
</div>
<div class="moduletable last">
  <h3 class="h3_1">Career at HR Center TSM</h3>
  <p><img border="0" src="/assets/tmp/img2.jpg"></p>
  <p>
    We are opened to talented, bright and initiative people that strain after realization of their goals through maximal self dedication and
    responsibility for result of their work.
  </p>
  <p><a href="/en/about/career" class="link-1">HR Center TSM vacancies</a></p>
</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '19', '10', 'ru', 'Схема проезда', '<h4>Схема проезда:</h4>
<iframe width="693" height="650" frameborder="0" src="https://maps.google.ru/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572&amp;output=embed" marginwidth="0" marginheight="0" scrolling="no"></iframe>
<small><a style="color:#0000FF;text-align:left" href="https://maps.google.ru/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572" target="_blank">Просмотреть увеличенную карту</a></small>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '20', '10', 'en', 'blank', '<h4>How to reach us: </h4>
<iframe width="693" height="650" frameborder="0" src="https://maps.google.ru/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572&amp;output=embed" marginwidth="0" marginheight="0" scrolling="no"></iframe>
<small><a style="color:#0000FF;text-align:left" href="https://maps.google.ru/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572" target="_blank">Просмотреть увеличенную карту</a></small>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '21', '11', 'ru', 'анкета', '<div class="moduletable">
					<div class="vakansy_footer">
<div class="desc">
<p>Если ни одна из указанных вакансий не отвечает вашим запросам, вы можете направить ваше резюме в нашу базу данных, и мы обязательно свяжемся с Вами в случае появления новых позиций. Направляйте Ваше резюме на электронный адрес <a href="http://mce_host/cv@hrtsm.ru">cv@hrtsm.ru</a></p>
<br>
<p><a href="/jobs/profile" class="link-3">Стань сотрудником HRC TSM !</a></p>
</div>
</div>		</div>' );
INSERT INTO `html_module_languages`(`id`,`html_module_id`,`lang`,`title`,`body`) VALUES ( '22', '11', 'en', 'анкета', '' );
-- ---------------------------------------------------------


-- Dump data of "html_modules" -----------------------------
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '1', 'footer', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '2', 'page_button', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '3', 'page_left', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '4', 'header', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '5', 'home_promo', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '6', 'home_button_1', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '7', 'home_button_2', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '8', 'page_button_1', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '9', 'page_left', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '10', 'page_button', NULL, NULL, NULL, NULL );
INSERT INTO `html_modules`(`id`,`name`,`position`,`lang`,`title`,`body`) VALUES ( '11', 'page_button_2', NULL, NULL, NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "html_modules_pages" -----------------------
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '2', '3' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '3' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '3' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '5', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '6', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '7', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '3' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '2', '4' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '4' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '8', '4' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '4' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '6' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '5' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '1' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '5' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '6' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '4' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '6' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '5' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '7' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '8' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '9' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '7' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '8' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '9' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '9', '7' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '9', '8' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '9', '9' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '10' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '11' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '10' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '11' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '12' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '10', '14' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '12' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '13' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '1', '14' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '10' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '11' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '12' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '13' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '4', '14' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '14' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '11', '13' );
INSERT INTO `html_modules_pages`(`html_module_id`,`page_id`) VALUES ( '3', '13' );
-- ---------------------------------------------------------


-- Dump data of "jobs" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "pages" ------------------------------------
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '1', 'home', 'home', 'Home', NULL, '1', '2', '0', '2014-06-16 21:48:07', '2014-06-16 21:48:07' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '3', 'about', 'about', 'О компании', NULL, '3', '10', '0', '2014-06-16 21:56:26', '2014-06-18 06:21:53' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '4', 'activity', 'about/activity', 'Сферы деятельности', '3', '4', '5', '1', '2014-06-18 05:09:18', '2014-06-18 06:21:21' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '5', '-hr-', 'about/-hr-', 'Команда HRC TSM', '3', '6', '7', '1', '2014-06-18 05:29:44', '2014-06-18 06:22:23' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '6', 'career', 'about/career', 'Карьера в HRC TSM', '3', '8', '9', '1', '2014-06-18 05:36:55', '2014-06-18 05:36:55' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '7', 'service', 'service', 'Услуги', NULL, '11', '16', '0', '2014-06-18 06:00:25', '2014-06-18 15:50:42' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '8', 'executivesearch', 'service/executivesearch', 'Проекты Executive Search', '7', '12', '13', '1', '2014-06-18 15:41:35', '2014-06-18 16:13:10' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '9', 'research', 'service/research', 'Комплексное исследование рынков', '7', '14', '15', '1', '2014-06-18 15:50:42', '2014-06-18 15:50:42' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '10', 'employer', 'employer', 'Партнёрам', NULL, '17', '20', '0', '2014-06-18 16:15:52', '2014-06-18 16:23:43' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '11', 'feedback-from-our-partners', 'employer/feedback-from-our-partners', 'Отзывы наших партнёров', '10', '18', '19', '1', '2014-06-18 16:23:43', '2014-06-18 16:23:43' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '12', 'applicant', 'applicant', 'Кандидатам', NULL, '21', '22', '0', '2014-06-18 16:28:10', '2014-06-18 16:28:10' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '13', 'job', 'job', 'Вакансии', NULL, '23', '24', '0', '2014-06-18 18:05:19', '2014-06-22 08:45:33' );
INSERT INTO `pages`(`id`,`path`,`slug`,`name`,`parent_id`,`lft`,`rgt`,`depth`,`created_at`,`updated_at`) VALUES ( '14', 'contacts', 'contacts', 'Контакты', NULL, '25', '26', '0', '2014-06-18 18:14:42', '2014-06-18 18:14:42' );
-- ---------------------------------------------------------


-- Dump data of "schema_migrations" ------------------------
INSERT INTO `schema_migrations`(`version`) VALUES ( '1' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '3' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '4' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '5' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '6' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '7' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '8' );
-- ---------------------------------------------------------


-- Dump data of "staff_admins" -----------------------------
INSERT INTO `staff_admins`(`id`,`email`,`encrypted_password`,`reset_password_token`,`reset_password_sent_at`,`remember_created_at`,`sign_in_count`,`current_sign_in_at`,`last_sign_in_at`,`current_sign_in_ip`,`last_sign_in_ip`,`created_at`,`updated_at`) VALUES ( '1', 'admin@admin.com', '$2a$10$5IJ9BVw6tCeSCy0eNh9wneuQku2EEEnpXSNMub73W/Cj4R5FfZSW2', NULL, NULL, '2014-06-18 04:07:30', '7', '2014-06-22 08:35:17', '2014-06-18 20:48:46', '109.167.205.48', '66.249.81.148', '2014-06-16 21:47:51', '2014-06-22 08:35:17' );
-- ---------------------------------------------------------


-- CREATE INDEX "index_contents_on_page_id" ----------------
CREATE INDEX `index_contents_on_page_id` USING BTREE ON `contents`( `page_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_module_languages_on_html_module_id" 
CREATE INDEX `index_html_module_languages_on_html_module_id` USING BTREE ON `html_module_languages`( `html_module_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_modules_on_lang" ---------------
CREATE INDEX `index_html_modules_on_lang` USING BTREE ON `html_modules`( `lang` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_modules_on_name" ---------------
CREATE INDEX `index_html_modules_on_name` USING BTREE ON `html_modules`( `name` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_modules_on_position" -----------
CREATE INDEX `index_html_modules_on_position` USING BTREE ON `html_modules`( `position` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_modules_pages_on_html_module_id" 
CREATE INDEX `index_html_modules_pages_on_html_module_id` USING BTREE ON `html_modules_pages`( `html_module_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_html_modules_pages_on_page_id" ------
CREATE INDEX `index_html_modules_pages_on_page_id` USING BTREE ON `html_modules_pages`( `page_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_jobs_on_tag_path" -------------------
CREATE INDEX `index_jobs_on_tag_path` USING BTREE ON `jobs`( `tag_path` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_jobs_on_tag_text" -------------------
CREATE INDEX `index_jobs_on_tag_text` USING BTREE ON `jobs`( `tag_text` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_pages_on_lft" -----------------------
CREATE INDEX `index_pages_on_lft` USING BTREE ON `pages`( `lft` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_pages_on_parent_id" -----------------
CREATE INDEX `index_pages_on_parent_id` USING BTREE ON `pages`( `parent_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_pages_on_path" ----------------------
CREATE INDEX `index_pages_on_path` USING BTREE ON `pages`( `path` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_pages_on_rgt" -----------------------
CREATE INDEX `index_pages_on_rgt` USING BTREE ON `pages`( `rgt` );
-- ---------------------------------------------------------


-- CREATE INDEX "index_pages_on_slug" ----------------------
CREATE INDEX `index_pages_on_slug` USING BTREE ON `pages`( `slug` );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


