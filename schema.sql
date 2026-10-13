-- Taller de Planos: tabla de planos por usuario.
-- Pégalo en Supabase → SQL Editor → New query → Run.

create table if not exists public.planos (
  user_id     uuid        not null default auth.uid() references auth.users(id) on delete cascade,
  id          text        not null check (length(id) between 1 and 64),
  nombre      text        not null default 'Plano' check (length(nombre) <= 120),
  tipo        text,
  actualizado timestamptz not null default now(),
  datos       text        not null check (length(datos) <= 2000000),
  primary key (user_id, id)
);

create index if not exists planos_user_actualizado on public.planos (user_id, actualizado desc);

-- Cada persona solo puede ver, crear, cambiar y borrar SUS planos.
alter table public.planos enable row level security;

drop policy if exists "planos_select_propios" on public.planos;
drop policy if exists "planos_insert_propios" on public.planos;
drop policy if exists "planos_update_propios" on public.planos;
drop policy if exists "planos_delete_propios" on public.planos;

create policy "planos_select_propios" on public.planos for select to authenticated using (auth.uid() = user_id);
create policy "planos_insert_propios" on public.planos for insert to authenticated with check (auth.uid() = user_id);
create policy "planos_update_propios" on public.planos for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "planos_delete_propios" on public.planos for delete to authenticated using (auth.uid() = user_id);
