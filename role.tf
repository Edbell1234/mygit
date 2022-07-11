 create)    

        aws cloudformation create-stack --stack-name dev-iam-app-roles \
        --template-body file://iam_app_roles_template.yml \
        --parameters file://iam_app_roles_dev_us_param.json \
        --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
        --region us-east-2
        ;;
    
    *)
    
        aws cloudformation update-stack --stack-name dev-iam-app-roles \
        --template-body file://iam_app_roles_template.yml \
        --parameters file://iam_app_roles_dev_us_param.json \
        --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
        --region us-east-2
        ;;
