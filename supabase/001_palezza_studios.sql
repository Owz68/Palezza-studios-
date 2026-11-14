-- Palezza Studios : comptes et projets. Tables préfixées ps_ pour éviter toute collision avec les tables existantes.
create table if not exists public.ps_projects (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  name text not null check (char_length(name) between 1 and 80),
  created_at timestamptz not null default now()
);
create table if not exists public.ps_project_items (
  id uuid primary key default gen_random_uuid(),
  project_id uuid not null references public.ps_projects(id) on delete cascade,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  kind text not null,
  title text not null,
  url text,
  created_at timestamptz not null default now()
);
create index if not exists ps_projects_user_idx on public.ps_projects(user_id);
create index if not exists ps_items_project_idx on public.ps_project_items(project_id);
create index if not exists ps_items_user_idx on public.ps_project_items(user_id);
alter table public.ps_projects enable row level security;
alter table public.ps_project_items enable row level security;
create policy "ps_projects_owner" on public.ps_projects for all to authenticated
  using (user_id = (select auth.uid())) with check (user_id = (select auth.uid()));
create policy "ps_items_owner" on public.ps_project_items for all to authenticated
  using (user_id = (select auth.uid())) with check (user_id = (select auth.uid()) and exists (select 1 from public.ps_projects p where p.id = project_id and p.user_id = (select auth.uid())));
