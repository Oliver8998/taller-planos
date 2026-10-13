// Configuración de Taller de Planos.
// Pega aquí los datos de tu proyecto de Supabase (Project Settings → API).
// La "anon public key" es pública a propósito: la seguridad la ponen las reglas (RLS) de schema.sql.
// Mientras esto tenga los valores de ejemplo, la web funciona igual pero guarda solo en el navegador.
window.TALLER_CONFIG = {
  supabaseUrl: "https://TU-PROYECTO.supabase.co",
  supabaseAnonKey: "TU_CLAVE_ANON_PUBLICA",
  google: false   // pon true cuando actives "Google" en Supabase → Authentication → Providers
};
