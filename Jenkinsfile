pipeline {
    agent any
    stages {
        stage('Construir Imagen Docker Localmente') {
            // Mueve 'when' aquí DENTRO del stage
            when {
                branch 'main'
            }
            steps {
                echo "🐳 Construyendo la Imagen Docker localmente..."
                sh "docker build -t mi-app-local:${env.GIT_COMMIT.substring(0, 8)} ."
                echo "✅ Imagen Docker 'mi-app-local:${env.GIT_COMMIT.substring(0, 8)}' construida localmente."
            }
        }
    }
    post { // Asegúrate que post esté fuera de stages si lo tienes
        always {
            echo "Pipeline básico finalizado."
        }
    }
}