# Taller de Planos: web pública

Archivos:
- `index.html`: la app entera.
- `config.js`: aquí pegas los datos de Supabase.
- `schema.sql`: la tabla de planos y sus reglas de seguridad.
- `robots.txt`, `sitemap.xml`, `og.png`, `favicon.svg`, `manifest.webmanifest`: para Google y para cuando compartas el enlace.

## 1. Subirla (GitHub Pages)
1. Crea un repo **público** en GitHub, por ejemplo `taller-planos`.
2. Pulsa *Add file → Upload files* y arrastra **todo el contenido** de esta carpeta (incluido `.nojekyll`).
3. Ve a *Settings → Pages → Source: Deploy from a branch → main / (root) → Save*.
4. En 1–2 minutos tendrás la web en `https://TU-USUARIO.github.io/taller-planos/`.

## 2. Poner tu URL
Busca y sustituye `https://TU-SITIO/` por tu URL (acabada en `/`) en `index.html`, `robots.txt` y `sitemap.xml`.

## 3. Cuentas y planos por usuario (Supabase, gratis)
1. Entra en supabase.com, crea un proyecto y espera a que esté listo.
2. Abre *SQL Editor → New query*, pega `schema.sql` y pulsa *Run*.
3. En *Authentication → URL Configuration*:
   - **Site URL** = tu URL.
   - En **Redirect URLs** añade también tu URL.
4. En *Project Settings → API*, copia la **Project URL** y la **anon public key** en `config.js`.
5. Sube el `config.js` cambiado al repo.

Sin el paso 3 la web funciona igual, pero cada uno guarda en su navegador.
Opcional: para "Entrar con Google", activa Google en *Authentication → Providers* y pon `google: true` en `config.js`.

## 4. Que salga en Google
1. Ve a Google Search Console (search.google.com/search-console) y añade tu URL como propiedad (*Prefijo de URL*).
2. Verifícala con la etiqueta HTML que te da Google: pégala dentro del `<head>` de `index.html`, justo debajo de `<meta charset="utf-8">`.
3. En *Sitemaps*, envía `sitemap.xml`. En *Inspección de URLs*, pega tu URL y pulsa *Solicitar indexación*.
4. Google suele tardar entre unos días y un par de semanas en mostrarla. Cuantos más sitios enlacen a ella (tu GitHub, redes, foros), antes aparece y más arriba sale.
