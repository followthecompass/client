output "zone_id" {
  value = "${aws_route53_zone.main.id}"
}

output "zone_name" {
  value = "${aws_route53_zone.main.name}"
}

output "local_root_fqdn" {
  value = "${aws_route53_record.local_root.fqdn}"
}

output "main_wp_fqdn" {
  value = "${aws_route53_record.main_wp.fqdn}"
}
