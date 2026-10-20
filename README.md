# Praha - Tour de Beer

Mobilní webová aplikace pro společné sledování návštěv hospod, piv, hodnocení, útrat, fotek a výzev.

## 1. Supabase
1. Vytvoř projekt na Supabase.
2. V SQL Editoru spusť celý obsah souboru `setup.sql`.
3. V Project Settings / API zkopíruj Project URL a publishable key (nikdy service_role key).
4. V `index.html` nahraď `YOUR_SUPABASE_URL` a `YOUR_SUPABASE_PUBLISHABLE_KEY`.

## 2. GitHub Pages
Nahraj `index.html`, `setup.sql` a tento README do veřejného repozitáře. Pro GitHub Pages nastav Settings > Pages > Deploy from a branch > main > /(root).

## Poznámka k zabezpečení
Tato party verze dovoluje anonymním návštěvníkům veřejné URL číst a měnit jediný řádek `prague-tour-2026`. Nesdílej odkaz mimo skupinu. Pro skutečnou autentizaci přidej Supabase Auth a přísnější RLS pravidla.
