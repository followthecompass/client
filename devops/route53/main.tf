resource "aws_route53_zone" "main" {
  name = "${var.route_zone}"

  tags {
    Terraformed = "true"
    Name        = "followthecompass.ru"
  }
}

resource "aws_route53_record" "main_wp" {
  zone_id = "${aws_route53_zone.main.id}"

  name = "${var.route_zone}"
  type = "A"

  ttl     = "300"
  records = ["54.90.120.186"]
}

resource "aws_route53_record" "main_wp_wildcard" {
  zone_id = "${aws_route53_zone.main.id}"

  name = "*.${var.route_zone}"
  type = "A"

  ttl     = "300"
  records = ["54.90.120.186"]
}

resource "aws_route53_record" "local_root" {
  zone_id = "${aws_route53_zone.main.id}"

  name = "local.${var.route_zone}"
  type = "A"

  ttl     = "300"
  records = ["127.0.0.1"]
}

resource "aws_route53_record" "local_wildcard" {
  zone_id = "${aws_route53_zone.main.id}"

  name = "*.local.${var.route_zone}"
  type = "A"

  ttl     = "300"
  records = ["127.0.0.1"]
}
