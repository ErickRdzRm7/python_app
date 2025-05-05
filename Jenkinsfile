
pipeline {

    agent any

    // Ejecutar sólo para la rama 'main' (o la que uses, ej: 'master')
    when { branch 'main' }

    stages {
        stage('Construir Imagen Docker Localmente') {
            // Clona el código (implícito por Jenkins) y construye la imagen Docker
            steps {
                echo "🐳 Construyendo la Imagen Docker localmente..."

                // Construir la imagen Docker usando el Dockerfile del repositorio.
                // La imagen se llamará 'mi-app-local' y tendrá como etiqueta
                // los primeros 8 caracteres del hash del commit.
                // Esta imagen SÓLO existirá en la máquina agente de Jenkins.
                sh "docker build -t mi-app-local:${env.GIT_COMMIT.substring(0, 8)} ."

                echo "✅ Imagen Docker 'mi-app-local:${env.GIT_COMMIT.substring(0, 8)}' construida localmente."
                echo "Puedes verla en el agente Jenkins ejecutando 'docker images'."
            }
        }
        // No hay más stages (ni push, ni deploy)
    } // Fin stages

    post {
      always {
        echo "Pipeline básico finalizado."
      }
    }
}