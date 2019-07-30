
{* do we want to show additional 1? *}
{if {config name=showAdditionAddressLine1}}

    {* outer container*}
    <div class="{$config.outerClass}">

        {if $config.innerContainer == true}
            <div class="select-field">
        {/if}

            <select id="{$config.id}"
                    name="{$config.name}"
                    required="required"
                    aria-required="true"
                    class="{$config.selectClass}is--required{if $config.error == true} has--error{/if}">
                <option value="" disabled="disabled" {if $config.value == ""} selected="selected"{/if}>
                    Etage*
                </option>
                <option value="Erdgeschoss" {if $config.value == "Erdgeschoss"} selected="selected"{/if}>
                    Erdgeschoss
                </option>
                {for $i = 1; $i <= 10; $i++}
                    <option value="{$i}. Etage"{if $config.value == "{$i}. Etage"} selected="selected"{/if}>
                        {$i}. Etage
                    </option>
                {/for}
                <option value="Über 10. Etage" {if $config.value == "Über 10. Etage"} selected="selected"{/if}>
                    Über 10. Etage
                </option>
            </select>

        {if $config.innerContainer == true}
            </div>
        {/if}

    </div>

{/if}
