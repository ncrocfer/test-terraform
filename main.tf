terraform {
  backend "remote" {
    organization = "ncrocfer"

    workspaces {
     name = "test-github"
    }
  }
}
