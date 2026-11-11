instances = {

    vm3 = {
      instance_type = "t3.micro"
      key_name = "tfm-key"
      tags = {
        Name = "vm3"
        Project = "zomato"
      }
    }

    vm4 = {
      instance_type = "t2.micro"
      key_name = "tfm-key"
      tags = {
        Name = "vm4"
        Project = "uber"
      }
    }
}