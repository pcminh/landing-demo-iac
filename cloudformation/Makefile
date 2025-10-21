deploy:
	@( \
		aws cloudformation \
		deploy \
		--template-file "template.yml" \
		--stack-name "terraform-s3-backend" \
		--capabilities CAPABILITY_NAMED_IAM ; \
	)

all: deploy