
{* file to extend *}
{extends file="parent:frontend/register/shipping_fieldset.tpl"}



{* additional address line 1 *}
{block name='frontend_register_shipping_fieldset_input_addition_address_line1'}

    {* configuration *}
    {$floor = []}
    {$floor['outerClass'] = "register--additional-line1"}
    {$floor['selectClass'] = ""}
    {$floor['innerContainer'] = true}
    {$floor['id'] = "additionalAddressLine21"}
    {$floor['name'] = "register[shipping][additionalAddressLine1]"}
    {$floor['error'] = isset($error_flags.additionalAddressLine1)}
    {$floor['value'] = $form_data.additionalAddressLine1}

    {* include floor selection *}
    {include file="frontend/_includes/account--floor-selection.tpl" config=$floor}

{/block}
