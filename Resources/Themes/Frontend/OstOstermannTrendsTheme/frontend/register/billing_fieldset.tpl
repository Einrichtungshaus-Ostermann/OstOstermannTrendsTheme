
{* file to extend *}
{extends file="parent:frontend/register/billing_fieldset.tpl"}



{* additional address line 1 *}
{block name='frontend_register_billing_fieldset_input_addition_address_line1'}

    {* configuration *}
    {$floor = []}
    {$floor['outerClass'] = "register--additional-line1"}
    {$floor['selectClass'] = ""}
    {$floor['innerContainer'] = true}
    {$floor['id'] = "additionalAddressLine1"}
    {$floor['name'] = "register[billing][additionalAddressLine1]"}
    {$floor['error'] = isset($error_flags.additionalAddressLine1)}
    {$floor['value'] = $form_data.additionalAddressLine1}

    {* include floor selection *}
    {include file="frontend/_includes/account--floor-selection.tpl" config=$floor}

{/block}
