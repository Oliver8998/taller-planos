# 🏠 Taller de Planos

**Diseñador de estructuras en 2D y 3D para MiJuego.** Los edificios se crean con las mismas piezas y el mismo formato que usa el juego, así que lo que diseñas aquí entra en el juego tal cual.

### 👉 [Abrir Taller de Planos](https://oliver8998.github.io/taller-planos/)

`https://oliver8998.github.io/taller-planos/`

---

## ✨ Qué puedes hacer

- **Plano 2D y vista 3D:** dibuja suelos, paredes, puertas, ventanas y escaleras por plantas, y míralo en 3D al momento.
- **Catálogo real del juego:** todas las piezas en madera, piedra, chatarra y hierro, las formas del martillo, muebles, decoración, luces, tejados y props, con sus ids reales.
- **Modo paseo en primera persona:** recorre la estructura con las medidas y la cámara del personaje del juego (altura, salto, agacharse, escalones…).
- **Marcadores:** botín, habitaciones con su tipo y estado, puertas cerradas o atrancadas, llaves, durmientes, vehículos y más.
- **Datos de la estructura:** categoría, uso, rareza, biomas, parcela y dificultad.
- **Revisión automática:** avisa de ids desconocidos, objetos delante de puertas, ventanas o puertas mal colocadas, escaleras sin hueco o una planta baja sin entrada.
- **Abrir y exportar el JSON del juego** (formato `StructureFile` v2).
- **Cuentas de usuario:** cada persona guarda sus estructuras en su cuenta y nadie más puede verlas.
- Funciona en **ordenador y móvil**.

## 🎮 Meter una estructura en el juego

1. En el Taller pulsa **Exportar al juego** y se descargará el `.json`.
2. Copia el archivo en `Assets/_Game/Estructuras/<Categoría>/`.
3. En Unity: **Tools → Contenido → Crear lo que falte**.
4. En el juego: **Ctrl+F8 → F8 → Colocar para jugar**.

Para editar una estructura que ya existe, usa **Abrir del juego** y elige su `.json`.

## ⌨️ Atajos

| Tecla | Acción |
|---|---|
| `V` | Seleccionar |
| `1`–`8` | Suelo, pared, puerta, ventana, escalera, colocar, marcador, borrar |
| `H` | Mover vista |
| `R` | Girar pieza |
| `Supr` | Borrar selección |
| `Ctrl+Z` / `Ctrl+Y` | Deshacer / rehacer |
| `WASD` · `Shift` · `Ctrl` · `Espacio` | Modo paseo: andar, correr, agacharse, saltar |

## 🛠️ Tecnología

- HTML + JavaScript en un solo archivo, sin instalación
- [three.js](https://threejs.org/) para la vista 3D y el modo paseo
- [Supabase](https://supabase.com/) para las cuentas y el guardado, con reglas RLS para que cada usuario solo acceda a lo suyo
- Alojado en GitHub Pages

## 📁 Archivos

| Archivo | Para qué sirve |
|---|---|
| `index.html` | El Taller de Planos 2 (formato del juego) |
| `viejo.html` | El Taller antiguo, para abrir planos de antes |
| `config.js` | Conexión con Supabase (la clave es pública; la seguridad la ponen las reglas RLS) |
| `schema.sql` | Tablas y reglas de la base de datos |
| `robots.txt`, `sitemap.xml` | Para que Google encuentre la página |

---

Hecho por **Oliver** · [oliver8998.github.io/taller-planos](https://oliver8998.github.io/taller-planos/)
