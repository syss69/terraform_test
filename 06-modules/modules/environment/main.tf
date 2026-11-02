resource "terraform_data" "this" {
	input = {
		name = var.name
		url = var.url
		purpose = var.purpose
	}
}

