create table model(
 id serial,
 category_id int,
 descryption char(400),
 img_id int,
 price int,
 price_discount int,
 price_promo int,
 name char(20),
 in_stock char(3),
 constraint model_prim_key primary key(id),
 constraint img_f_key foreign key (img_id) references img(id) match simple on update cascade on delete no action,
 constraint category_f_key foreign key (category_id) references category(id) match simple on update cascade on delete no action,
);

create table category(
 id serial,
 main char(20),
 sub char(50),
 constraint category_p_key primary key(id)
);

create table img(
id serial,
main_img char(40),
sub_imgs char(400),
constraint img_p_key primary key(id)
);

insert into category(id, main, sub) values
(1, '�������', '���������, ������� ������'),
(2, '��������', '����, ������� ������'),
(3, '�����', '���������, ������� ������'),
(4, '�����', '����, ������� ������');

insert into img (id, main_img, sub_imgs) values
(1, 'main_t_green', 'sub_t1_green sub_t2_green'),
(2, 'main_t_yellow', 'sub_t1_yellow sub_t2_yellow'),
(3, 'main_shirt_red', 'sub_shirt1_red sub_shirt2_red'),
(4, 'main_shirt_blue', 'sub_shirt1_blue sub_shirt2_blue'),
(5, 'main_hood_shirt_grey', 'sub_hood_shirt1_grey sub_hood_shirt2_grey'),
(6, 'main_hood_shirt_khaki', 'sub_hood_shirt1_khaki sub_hood_shirt2_khaki'),
(7, 'main_hood_shirt_blue', 'sub_hood_shirt1_blue sub_hood_shirt2_blue'),
(8, 'main_hood_black', 'sub_hood1_black sub_hood2_black'),
(9, 'main_hood_grey', 'sub_hood1_grey sub_hood2_grey'),
(10, 'main_hood_khaki', 'sub_hood1_khaki sub_hood2_khaki'),
(11, 'main_ass', 'sub1_ass sub2_ass'),
(12, 'main_kitogawa_black', 'sub_kitogawa1_black sub_kitogawa2_black'),
(13, 'main_kitogawa_pink', 'sub_kitogawa1_pink sub_kitogawa2_pink'),
(14, 'main_rei_black', 'sub_rei1_black sub_rei2_black'),
(15, 'main_rei_grey', 'sub_rei1_grey sub_rei2_grey');

 insert into model (id, category_id, img_id, price, price_discount, price_promo, name, in_stock) values
(1, 1, '������� �� ������ ���������� 260 �/��. �. ������ ������������ ����, �� ��������� � � ���������. ��� ��������� ������� � �������� �� �������', 5, 4200, 3999, 3499, '������� � ��������� DC Shoes', 'yes'),
(2, 1, '������� �� ������ ���������� 260 �/��. �. ������ ������������ ����, �� ��������� � � ���������. ��� ��������� ������� � �������� �� �������', 6, 4200, 3999, 3499, '������� � ��������� DC Shoes', 'no'),
(3, 1, '������� �� ������ ���������� 260 �/��. �. ������ ������������ ����, �� ��������� � � ���������. ��� ��������� ������� � �������� �� �������', 7, 4200, 3999, 3499, '������� � ��������� DC Shoes', 'yes'),

(4, 1, '������� �� ������ ���������� 60 �/��. �. ������ ������������ ����, �������� �� ���������. ��������� ������� �� ���������. � ������ ������� ��� ��������', 4, 2499, 2300, 2100, '������� DC Shoes', 'no'),
(5, 1, '������� �� ������ ���������� 60 �/��. �. ������ ������������ ����, �������� �� ���������. ��������� ������� �� ���������. � ������ ������� ��� ��������', 3, 2499, 2300, 2100, '������� DC Shoes', 'yes'),

(6, 2, '������ ������ ������� ���������. ������ ������������ ����, ������� �����. � �������, ������� �� �����', 1, 3999, 3500, 3100, '�������� DC Shoes', 'yes'),
(7, 2, '������ ������ ������� ���������. ������ ������������ ����, ������� �����. � �������, ������� �� �����', 2, 3999, 3500, 3100, '�������� DC Shoes', 'yes'),

(8, 3, '����� ���������� 230 �/��. � ������������� �����������. ������ ������������ ����, ������� ���� �� �����. ����� �� �����', 8, 6799, 6200, 5999, '����� DC Shoes', 'no'),
(9, 3, '����� ���������� 230 �/��. � ������������� �����������. ������ ������������ ����, ������� ���� �� �����. ����� �� �����', 9, 6799, 6200, 5999, '����� DC Shoes', 'yes'),
(10, 3, '����� ���������� 230 �/��. � ������������� �����������. ������ ������������ ����, ������� ���� �� �����. ����� �� �����', 10, 6799, 6200, 5999, '����� DC Shoes', 'yes'),

(11, 4, '������: ������� ����� ���������, ��������� � ������ ���������� �������, ����� �� ����� �����, ������ ��������� ������', 11, 980, 850, 799, '����� ���ASS', 'no'),

(12, 4, '������: ������� ����� ���������, ��������� � ������ ���������� �������, ����� �� ����� �����, ������ ��������� ������', 12, 1099, 1000, 900, '����� Kitogawa', 'yes'),
(13, 4, '������: ������� ����� ���������, ��������� � ������ ���������� �������, ����� �� ����� �����, ������ ��������� ������', 13, 1099, 1000, 900, '����� Kitogawa', 'yes'),

(14, 4, '������: ������� ����� ���������, ��������� � ������ ���������� �������, ����� �� ����� �����, ������ ��������� ������', 14, 1099, 1000, 900, '����� Rei', 'no'),
(15, 4, '������: ������� ����� ���������, ��������� � ������ ���������� �������, ����� �� ����� �����, ������ ��������� ������', 15, 1099, 1000, 900, '����� Rei', 'yes');