
{* file to extend *}
{extends file="parent:frontend/address/form.tpl"}



{* additional address line 1 *}
{block name='frontend_address_form_input_addition_address_line1'}

    {* configuration *}
    {$floor = []}
    {$floor['outerClass'] = "address--additional-line1 field--select select-field"}
    {$floor['selectClass'] = "select-additional-1 "}
    {$floor['innerContainer'] = false}
    {$floor['id'] = "additionalAddressLine1"}
    {$floor['name'] = "{$inputPrefix}[additionalAddressLine1]"}
    {$floor['error'] = isset($error_flags.additionalAddressLine1)}
    {$floor['value'] = $formData.additionalAddressLine1}

    {* include floor selection *}
    {include file="frontend/_includes/account--floor-selection.tpl" config=$floor}

{/block}
