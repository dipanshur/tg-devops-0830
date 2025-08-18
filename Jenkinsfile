pipeline {
    agent any
    tools {
        maven 'M11'
    }

    stages {
        stage('Git SCM Checkout') {
            steps {
                git branch: 'main',
                credentialsId: 'github',
                url: 'https://github.com/dipanshur/tg-devops-0830.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    withMaven(maven: 'M11') {
                        sh 'mvn clean install package'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'webserver', transfers: [sshTransfer(excludes: '', execCommand: '', execTimeout: 120000, flatten: true, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/usr/share/tomcat10/webapps', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)])
            }
        }
    }
}