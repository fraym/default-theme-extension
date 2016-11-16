<block type="config">
    <template>
        <![CDATA[

        {function localeConfig($config, $localeId)}
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Headline')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][headline]" value="{$config->$localeId->headline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>
                        {_('Text')}
                    </label>
                    <textarea name="config[{$localeId}][text]" class="form-control">{$config->$localeId->text}</textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>{_('Image')}</label>
                    <input type="text" class="form-control" name="config[{$localeId}][image]" value="{$config->$localeId->image}" data-absolutepath="false" data-filepath="true" data-singlefileselect="1" data-filefilter="*.jpg,*.png" />
                </div>
            </div>
        {/function}

        <div>
            <ul class="nav nav-tabs" role="tablist">
                {foreach $locales as $key => $locale}
                    <li role="presentation" class="{if isFirst($locales, $key)}active{/if}"><a href="#locale-{$locale.id}" data-toggle="tab">{$locale.name}</a></li>
                {/foreach}
            </ul>
            <div class="tab-content">
                {foreach $locales as $key => $locale}
                    <div role="tabpanel" class="tab-pane{if isFirst($locales, $key)} active{/if}" id="locale-{$locale.id}">
                        {localeConfig($config, $locale.id)}
                    </div>
                {/foreach}
            </div>
        </div>

        ]]>
    </template>
</block>

<div{if $inEditMode} data-inline-editor-image="config[{$locale}][image]"{/if} id="tf-home" class="text-center"{if $config->$locale->image} style="background-image:url('<block type="image" maxWidth="1200" srcOnly="true" method="resize" src="{$config->$locale->image}"></block>')" {/if}>
    <div class="overlay">
        <div class="content">
            <h1{if $inEditMode} data-inline-editor-field="config[{$locale}][headline]"{/if}>{{$config->$locale->headline}}</h1>
            <p{if $inEditMode} data-inline-editor-field="config[{$locale}][text]"{/if} class="lead">{{$config->$locale->text}}</p>
            <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
        </div>
    </div>
</div>