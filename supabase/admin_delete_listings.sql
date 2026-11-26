-- FlipMarket admin delete access
-- Run once in Supabase SQL Editor.
-- Grants DELETE on listings only to the authenticated admin email.
create policy "flipmarket_admin_can_delete_listings"
on public.listings
for delete
to authenticated
using (
  lower(coalesce(auth.jwt() ->> 'email', '')) = 'yziksadil@gmail.com'
);
