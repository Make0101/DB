create table type(
 id serial,
 name char(20),
 constraint type_p_key primary key (id)
);
create table size(
 id serial,
 size char(10),
 constraint size_p_key primary key (id)
);

create table model(
 id serial,
 type_id int,
 size_id int,
 descryption_id int,
 img_id int,
 price_id int,
 name char(40),
 constraint model_prim_key primary key(id),
 constraint type_f_key foreign key (type_id) references type(id) match simple on update cascade on delete no action,
 constraint size_f_key foreign key (size_id) references  size(id) match simple on update no action on delete no action,
 constraint img_f_key foreign key (img_id) references img(id) match simple on update cascade on delete no action,
 constraint descryption_f_key foreign key (descryption_id) references descryption(id) match simple on update cascade on delete no action,
 constraint price_f_key foreign key (price_id) references price(id) match simple on update cascade on delete no action
);

create table descryption(
 id serial,
 about char(400),
 constraint descryption_p_key primary key(id)
);

create table img(
id serial,
main_img char(40),
sub_img_1 char(40),
sub_img_2 char(40),
constraint img_p_key primary key(id)
);
create table price(
id serial,
actual int,
promo int,
constraint price_p_key primary key(id)
);

insert into size (id, size) values
 (1, '44-46'),
 (2, '48-52'),
 (3, '54-58');

insert into type (id, name) values
 (1, 'Рубашка'),
 (2, 'Футболка'),
 (3, 'Майка'),
 (4, 'Толстовка');

 insert into descryption (id, about) values
(1, 'Фланель из хлопка плотностью 260 г/кв. м. Уютный классический крой, на пуговицах и с капюшоном. Два нагрудных кармана с клапаном на утяжках'),
(2, 'Мягкая джерси средней плотности. Уютный классический крой, круглый вырез. В полоску, вышивка на груди'),
(3, 'Ткань плотностью 230 г/кв. м перекрестного окрашивания. Уютный классический крой, втачной крой на груди. Принт на груди'),
(4, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт'),
(5, 'Фланель из хлопка плотностью 60 г/кв. м. Уютный классический крой, воротник на пуговицах. Нагрудные карманы на пуговицах. С легким начесом для мягкости');

insert into price (id, actual, promo) values
(1, 2499, 2100),
(2, 6799, 5999),
(3, 980, 799),
(4, 4200, 3499),
(5, 3999, 3100),
(6, 1099, 900);

insert into img (id, main_img, sub_img_1, sub_img_2) values
(1, 'main_t_green', 'sub_t1_green', 'sub_t2_green'),
(2, 'main_t_yellow', 'sub_t1_yellow', 'sub_t2_yellow'),
(3, 'main_shirt_red', 'sub_shirt1_red', 'sub_shirt2_red'),
(4, 'main_shirt_blue', 'sub_shirt1_blue', 'sub_shirt2_blue'),
(5, 'main_hood_shirt_grey', 'sub_hood_shirt1_grey', 'sub_hood_shirt2_grey'),
(6, 'main_hood_shirt_khaki', 'sub_hood_shirt1_khaki', 'sub_hood_shirt2_khaki'),
(7, 'main_hood_shirt_blue', 'sub_hood_shirt1_blue', 'sub_hood_shirt2_blue'),
(8, 'main_hood_black', 'sub_hood1_black', 'sub_hood2_black'),
(9, 'main_hood_grey', 'sub_hood1_grey', 'sub_hood2_grey'),
(10, 'main_hood_khaki', 'sub_hood1_khaki', 'sub_hood2_khaki'),
(11, 'main_ass', 'sub1_ass', 'sub2_ass'),
(12, 'main_kitogawa_black', 'sub_kitogawa1_black', 'sub_kitogawa2_black'),
(13, 'main_kitogawa_pink', 'sub_kitogawa1_pink', 'sub_kitogawa2_pink'),
(14, 'main_rei_black', 'sub_rei1_black', 'sub_rei2_black'),
(15, 'main_rei_grey', 'sub_rei1_grey', 'sub_rei2_grey');

 insert into model (id, type_id, size_id, descryption_id, img_id, price_id, name) values
(1, 1, 1, 1, 5, 4, 'Рубашка с капюшоном DC Shoes'),
(2, 1, 1, 1, 6, 4, 'Рубашка с капюшоном DC Shoes'),
(3, 1, 1, 1, 7, 4, 'Рубашка с капюшоном DC Shoes'),
(4, 1, 2, 1, 5, 4, 'Рубашка с капюшоном DC Shoes'),
(5, 1, 2, 1, 6, 4, 'Рубашка с капюшоном DC Shoes'),
(6, 1, 2, 1, 7, 4, 'Рубашка с капюшоном DC Shoes'),
(7, 1, 3, 1, 5, 4, 'Рубашка с капюшоном DC Shoes'),
(8, 1, 3, 1, 6, 4, 'Рубашка с капюшоном DC Shoes'),
(9, 1, 3, 1, 7, 4, 'Рубашка с капюшоном DC Shoes'),
(10, 1, 1, 5, 4, 1, 'Рубашка DC Shoes'),
(11, 1, 2, 5, 4, 1, 'Рубашка DC Shoes'),
(12, 1, 3, 5, 4, 1, 'Рубашка DC Shoes'),
(13, 1, 1, 5, 3, 1, 'Рубашка DC Shoes'),
(14, 1, 2, 5, 3, 1, 'Рубашка DC Shoes'),
(15, 1, 3, 5, 3, 1, 'Рубашка DC Shoes'),

(16, 2, 1, 2, 1, 5, 'Футболка DC Shoes'),
(17, 2, 2, 2, 1, 5, 'Футболка DC Shoes'),
(18, 2, 3, 2, 1, 5, 'Футболка DC Shoes'),
(19, 2, 1, 2, 2, 5, 'Футболка DC Shoes'),
(20, 2, 2, 2, 2, 5, 'Футболка DC Shoes'),
(21, 2, 3, 2, 2, 5, 'Футболка DC Shoes'),

(22, 4, 1, 3, 8, 2, 'Кофта DC Shoes'),
(23, 4, 2, 3, 8, 2, 'Кофта DC Shoes'),
(24, 4, 3, 3, 8, 2, 'Кофта DC Shoes'),
(25, 4, 1, 3, 9, 2, 'Кофта DC Shoes'),
(26, 4, 2, 3, 9, 2, 'Кофта DC Shoes'),
(27, 4, 3, 3, 9, 2, 'Кофта DC Shoes'),
(28, 4, 1, 3, 10, 2, 'Кофта DC Shoes'),
(29, 4, 2, 3, 10, 2, 'Кофта DC Shoes'),
(30, 4, 3, 3, 10, 2, 'Кофта DC Shoes'),

(31, 3, 1, 4, 11, 3, 'Майка ДимASS'),
(32, 3, 2, 4, 11, 3, 'Майка ДимASS'),
(33, 3, 3, 4, 11, 3, 'Майка ДимASS'),

(34, 3, 1, 4, 12, 6, 'Майка Kitogawa'),
(35, 3, 2, 4, 12, 6, 'Майка Kitogawa'),
(36, 3, 3, 4, 12, 6, 'Майка Kitogawa'),
(37, 3, 1, 4, 13, 6, 'Майка Kitogawa'),
(38, 3, 2, 4, 13, 6, 'Майка Kitogawa'),
(39, 3, 3, 4, 13, 6, 'Майка Kitogawa'),

(40, 3, 1, 4, 14, 6, 'Майка Rei'),
(41, 3, 2, 4, 14, 6, 'Майка Rei'),
(42, 3, 3, 4, 14, 6, 'Майка Rei'),
(43, 3, 1, 4, 15, 6, 'Майка Rei'),
(44, 3, 2, 4, 15, 6, 'Майка Rei'),
(45, 3, 3, 4, 15, 6, 'Майка Rei');