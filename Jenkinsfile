pipeline {
    agent {label 'k8s'}
    stages {
        stage('k8s部署') {
            steps {
                echo 'k8s po 升级'
                sh 'kubectl rollout restart deployment jobcher-blog-deployment'
            }
        }
    }
}
