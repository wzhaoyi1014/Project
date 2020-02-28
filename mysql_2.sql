--  插入练习
-- book数据表中插入一些数据
--
-- 作者： 老舍   鲁迅  钱钟书  沈从文
-- 书的价格  30 -- 120
-- 出版社 ：  中国文学  机械工业  中国教育

insert into books (name,auther,public,price) values
('边城','沈从文','机械工业出版社',36),
('骆驼祥子','老舍','中国教育出版社',42),
('茶馆','老舍','中国文学出版社',55),
('呐喊','鲁迅','中国教育出版社',70),
('围城','钱钟书','中国文学出版社',52);

insert into book (name,auther,public,price) values
('林家铺子','矛盾','机械工业出版社',61.5),
('朝花夕拾','鲁迅','中国文学出版社',46);

-- where字句示例
select * from class_1  where score between 80 and 90;

select * from class_1  where age in (11,13,15);

select * from class_1  where sex is null;


-- 练习2 查找练习
--
-- 1. 查找30多图书
      select * from book where price >= 30 and price < 40;
-- 2. 查找中国教育出版社出版的图书
      select * from book where publication = "中国教育出版社";
-- 3. 查找老舍写的，中国文学出版社出版的
      select * from book where author = '老舍' and publication="中国文学出版社";
-- 4. 查找备注不为空的
      select * from book comment is not null;
-- 5. 查找价格查过60的，只看书名和价格
      select title,price from book where price > 60;
-- 7. 查找鲁迅写的 或者 矛盾写的
      select * from book where author ='鲁迅' or author ='矛盾';
      select * from book where author in ('鲁迅','矛盾');


-- alter 操作
alter table interest add tel char(11) after price;
alter table interest drop level;
alter table interest modify tel  char(16);
alter table interest change tel phone char(16);
alter table class_1 rename cls;

-- 时间类型
select * from marathon where birthday > '1990-01-01';
select * from marathon where registration_time < now();
select * from marathon where birthday > '1990-01-01';



练习3： 使用book表完成

1. 将呐喊的价格改为45元
2. 增加一个字段 出版日期 类型为 date 放在价格后面
3. 修改所有老舍的作品出版日期为2016-10-1
4. 修改所有人民文学出版社的图书作品出版日期为2018-1-1，但是老舍的不要改
5. 删除所有在60元以上的图书
7. 修改价格字段的数据类型为 decimal(5,2)
8. 查找鲁迅写的 2017年以后出版的图书




































# 创建sanguo表
create table sanguo
(
    id      int primary key auto_increment,
    name    varchar(30),
    gender  enum ('男','女'),
    country enum ('吴','蜀','魏'),
    attack  smallint,
    defense tinyint
);

insert into sanguo
values (1, '曹操', '男', '魏', 256, 63),
       (2, '张辽', '男', '魏', 328, 69),
       (3, '甄姬', '女', '魏', 168, 34),
       (4, '夏侯渊', '男', '魏', 366, 83),
       (5, '刘备', '男', '蜀', 220, 59),
       (6, '诸葛亮', '男', '蜀', 170, 54),
       (7, '赵云', '男', '蜀', 377, 66),
       (8, '张飞', '男', '蜀', 370, 80),
       (9, '孙尚香', '女', '蜀', 249, 62),
       (10, '大乔', '女', '吴', 190, 44),
       (11, '小乔', '女', '吴', 188, 39),
       (12, '周瑜', '男', '吴', 303, 60),
       (13, '吕蒙', '男', '吴', 330, 71);


