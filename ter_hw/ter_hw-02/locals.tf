locals {
  vm_web_name = "${var.vm_web_name}-${var.environment}-${var.project}"
  vm_db_name  = "${var.vm_db_name}-${var.environment}-${var.project}"
}