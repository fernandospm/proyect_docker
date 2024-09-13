import web

# Definir las rutas
urls = (
    '/', 'Index'
)

# Clase para manejar la ruta "/"
class Index:
    def GET(self):
        return "Holaaaaa!"

# Inicializar la aplicación
if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()