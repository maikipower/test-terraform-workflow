# main.tf

provider "local" {
  version = "2.1.0"
}

resource "local_file" "hello_world" {
  filename = "${path.module}/hello_world.py"
  content = <<-EOT
    def hello_world():
        print("Hello world")
        
    if __name__ == "__main__":
        hello_world()
  EOT
}
