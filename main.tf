
# --------- ResourceGroup ------------
resource "azurerm_resource_group" "resource_group" {
    for_each = local.resource_group
        name            = each.value.name 
        location        = each.value.location == null  ?  var.default_values.location : each.value.location
        tags            = each.value.tags == null  ?  var.default_values.tags : each.value.tags
}