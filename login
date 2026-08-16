<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Admin - Padel Balikpapan</title>
    <!-- Tailwind CSS untuk styling yang rapi dan responsif -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-zinc-900 text-white flex items-center justify-center h-screen m-0">

    <div class="bg-zinc-800 p-8 rounded-xl shadow-2xl w-96 border border-zinc-700">
        <h2 class="text-2xl font-bold mb-2 text-center text-emerald-400">ADMIN LOGIN</h2>
        <p class="text-xs text-zinc-400 mb-6 text-center">Padel Balikpapan - POS System</p>
        
        <!-- Form Login -->
        <form id="login-form" onsubmit="handleLogin(event)" class="space-y-4">
            <div>
                <label class="block text-sm font-medium mb-1 text-zinc-300">Email Admin</label>
                <input type="email" id="email" required 
                    class="w-full px-4 py-2 rounded bg-zinc-900 border border-zinc-700 focus:outline-none focus:border-emerald-500 text-white text-sm"
                    placeholder="admin@padel.com">
            </div>
            
            <div>
                <label class="block text-sm font-medium mb-1 text-zinc-300">Password</label>
                <input type="password" id="password" required 
                    class="w-full px-4 py-2 rounded bg-zinc-900 border border-zinc-700 focus:outline-none focus:border-emerald-500 text-white text-sm"
                    placeholder="••••••••">
            </div>

            <button type="submit" 
                class="w-full py-2.5 bg-emerald-600 hover:bg-emerald-500 text-white font-semibold rounded transition duration-200 text-sm">
                Masuk Dashboard Admin
            </button>
        </form>

        <div class="mt-6 text-center">
            <a href="index.html" class="text-xs text-zinc-400 hover:text-white underline">← Kembali ke Menu Utama</a>
        </div>
    </div>

    <!-- Firebase SDK (Versi Kompatibilitas / Namespaced v8 atau v9 modular sesuai konfigurasi Anda) -->
    <script src="https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.10.1/firebase-auth.js"></script>

    <script>
        // Konfigurasi Firebase Anda (sesuaikan dengan project Firebase Anda)
        const firebaseConfig = {
            apiKey: "MASUKKAN_API_KEY_ANDA",
            authDomain: "MASUKKAN_AUTH_DOMAIN_ANDA",
            projectId: "MASUKKAN_PROJECT_ID_ANDA",
            storageBucket: "MASUKKAN_STORAGE_BUCKET_ANDA",
            messagingSenderId: "MASUKKAN_MESSAGING_SENDER_ID_ANDA",
            appId: "MASUKKAN_APP_ID_ANDA"
        };

        // Inisialisasi Firebase
        if (!firebase.apps.length) {
            firebase.initializeApp(firebaseConfig);
        }

        // Fungsi Proses Login
        function handleLogin(event) {
            event.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            firebase.auth().signInWithEmailAndPassword(email, password)
                .then((userCredential) => {
                    // Login Berhasil -> Arahkan ke halaman admin (misal: admin.html)
                    alert("Login Berhasil!");
                    window.location.href = "admin.html"; 
                })
                .catch((error) => {
                    // Jika gagal (salah password / email tidak terdaftar)
                    alert("Gagal Masuk: " + error.message);
                });
        }
    </script>
</body>
</html>

