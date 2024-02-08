## terraform give "terraform.tfvars" file priority than default values in "vaariables.tf"  files

### syntax if customize file is there
   ```
terraform apply -var-file=demo.tfvars
```

### if the tfvars files has auto then it automatically get the valus from that file.
```
terraform apply demo.auto.apply
```

### Priority Lifecycle of variables
1. command line var value (-var=instance="t2.micro")
2. terraform.tfvars file
3. env var value (export TF_VAR_)
4. default var value
5. runtime

( if you want TF_VAR_ values are permenent always after restart the terminal or reboot it then store this value in ".bashrc" file )
