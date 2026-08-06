alter table public.wines
add column if not exists volume text;

update public.wines
set volume = '0,75 L'
where volume is null or btrim(volume) = '';

alter table public.wines
alter column volume set default '0,75 L';

alter table public.wines
alter column volume set not null;