create table if not exists public.tour_state (
  tour_id text primary key,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.tour_state enable row level security;
grant select, insert, update on table public.tour_state to anon;
create policy "tour_read" on public.tour_state for select to anon using (tour_id = 'prague-tour-2026');
create policy "tour_insert" on public.tour_state for insert to anon with check (tour_id = 'prague-tour-2026');
create policy "tour_update" on public.tour_state for update to anon using (tour_id = 'prague-tour-2026') with check (tour_id = 'prague-tour-2026');
alter publication supabase_realtime add table public.tour_state;
insert into public.tour_state(tour_id,state) values ('prague-tour-2026','{}'::jsonb) on conflict (tour_id) do nothing;
