
CREATE TABLE public.vault_links (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  title TEXT NOT NULL DEFAULT '',
  url TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.vault_links TO anon, authenticated;
GRANT ALL ON public.vault_links TO service_role;
ALTER TABLE public.vault_links ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read vault" ON public.vault_links FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "Public insert vault" ON public.vault_links FOR INSERT TO anon, authenticated WITH CHECK (true);
CREATE POLICY "Public update vault" ON public.vault_links FOR UPDATE TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "Public delete vault" ON public.vault_links FOR DELETE TO anon, authenticated USING (true);
CREATE INDEX vault_links_created_at_idx ON public.vault_links (created_at DESC);
