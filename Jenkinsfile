pipeline {
    agent any

    environment {
        dockerhub_pass = credentials('dockerhub_pass')
    }

    options {
        timeout(time: 1, unit: 'HOURS')
    }

    stages{
        stage('Running playbook') {
           steps {
               ansiColor('xterm') {
                    ansiblePlaybook( 
                        playbook: 'playbook.yml',
                        inventory: 'inventory.ini', 
                        colorized: true) 
                }
           }
        }
    }
}
