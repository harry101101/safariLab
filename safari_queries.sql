--queries go here
--names of animals in cat house
select name from animals where enclosure_id = (select id from enclosures where name = 'farm');
--names of staff in given enclosure
select name from staff where id = (select employee_id from assignments where enclosure_id =(se
lect id from enclosures where name = 'bird house'));
--names of staff workinh in open enclosure
select name from staff where id in(select employee_id from assignments where enclosure_id in 
(select id from enclosures where closed_for_maintenance = true));