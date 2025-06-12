# 📱 Componentes Flutter

Este proyecto es una aplicación Flutter de ejemplo que muestra diferentes componentes y widgets, organizada mediante rutas y temas personalizados.

## 📁 Estructura del Proyecto

```text
lib/                # Código fuente principal de la aplicación
├── main.dart       # Punto de entrada de la app
├── router/         # Definición de rutas y navegación
└── theme/          # Temas personalizados

assets/             # Recursos estáticos (imágenes, gifs, etc)

android/            # Soporte para Android
ios/                # Soporte para iOS
linux/              # Soporte para Linux
macos/              # Soporte para macOS
windows/            # Soporte para Windows
web/                # Soporte para Web

test/               # Pruebas unitarias y de widget
````

## 🚀 Instalación

1. Clona este repositorio:

   ```sh
   git clone https://github.com/jesWeb/Componentes_Flutter.git
   cd componentes
   ```

2. Instala las dependencias:

   ```sh
   flutter pub get
   ```

3. Ejecuta la aplicación:

   ```sh
   flutter run
   ```

## ✨ Características

* Navegación entre pantallas usando rutas nombradas.
* Temas personalizados con `AppTheme`.
* Ejemplos prácticos del uso de múltiples widgets de Flutter.
* Soporte multiplataforma: Android, iOS, Web, Linux, macOS y Windows.

## 🛠️ Scripts Útiles

* Compilar para web:

  ```sh
  flutter build web
  ```

* Compilar para escritorio (ejemplo para Windows):

  ```sh
  flutter build windows
  ```

## 📌 Requisitos

* Flutter SDK instalado
* Dispositivo o emulador configurado para pruebas

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
