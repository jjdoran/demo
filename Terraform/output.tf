output "public_dns" { 
	description "The public DNS name associated with the instance"
	value	= try(aws_instance.demobox.public_dns, "")
}
output "public_ip" { 
	description "The public IP Address associated with the instance"
	value	= try(aws_instance.demobox.public_ip, "")
}

output "private_ip" { 
	description "The private IP Address associated with the instance"
	value	= try(aws_instance.demobox.private_ip, "")
}
