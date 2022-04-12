pipeline {
    agent {label 'k8s'}

    stages {
        stage('k8s部署') {
            steps {
                echo 'k8s升级'
                sh 'kubectl apply -f jobcher-blog.yaml'
            }
        }
    }
}