resource "aws_ebs_volume" "this" {
  availability_zone = var.availability_zone
  size              = var.size
  tags              = var.tags
  type              = var.type
}


resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.this.id
  instance_id = var.instance_id
}
